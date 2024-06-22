---
creation_date: 2024-06-22
modification_date: 2024-06-22
author: Jimmy Briggs <jimmy.briggs@jimbrig.com>
tags:
  - Type/Article/Medium
  - Topic/Dev/R
  - Status/Complete
aliases:
  - Deploying and R Shiny Dashboard on GCP Cloud Run
publish: true
permalink:
description:
image:
cssclasses:
---

# Deploying an R Shiny Dashboard on GCP Cloud Run

> [!SOURCE] Sources:
> - *[Deploying an R Shiny Dashboard on GCP Cloud Run | by Poorna Chathuranjana | Medium](https://medium.com/@hdpoorna/deploying-an-r-shiny-dashboard-on-gcp-cloud-run-c1c32a076783)*

```table-of-contents
title: ## Contents 
style: nestedList # TOC style (nestedList|inlineFirstLevel)
minLevel: 1 # Include headings from the specified level
maxLevel: 4 # Include headings up to the specified level
includeLinks: true # Make headings clickable
debugInConsole: false # Print debug info in Obsidian console
```


## Introduction

If you are into statistical data analysis and forecasting, you are probably already familiar with [R programming language](https://www.r-project.org/). Then, you must know that [R shiny dashboards](https://rstudio.github.io/shinydashboard/) can be used to visualize data easily, without worrying much about the user interface (UI). You can use [Google Cloud Platform (GCP)](https://cloud.google.com/) to host R shiny dashboard apps, since [GCP Cloud Run](https://cloud.google.com/run/docs/overview/what-is-cloud-run) started [supporting WebSockets](https://cloud.google.com/run/docs/release-notes#June_22_2021). We will be creating a container image with the app using [docker](https://www.docker.com/).

(This was tested with Ubuntu 18.04)

## 0. Prerequisites

- Install [R](https://cran.r-project.org/)

- Install [RStudio](https://www.rstudio.com/)

- [Setup Docker](https://docs.docker.com/engine/install/ubuntu/) (or to install, you could try my [older post](https://medium.com/@hdpoorna/setup-nvidia-docker-79e5f82fea41) with appropriate updates.)

- [Google Cloud CLI (gcloud)](https://cloud.google.com/sdk/docs/install-sdk#linux)

## 1. Understanding the directory & file tree

To dockerize, we will be using the following directory and file structure.

```
CloudRunShinyDashboard/
  |-- Dockerfile
  |-- shiny-server.conf
  |-- shiny-server.sh
  |-- app/
        |-- app.R
        |-- images/
              |-- img_1.jpg
```

- app.R = R shiny dashboard app.

- img_1.jpg (optional) = An image to be shown on the dashboard body. (change the code accordingly, if you decide not to have the image.)

- Dockerfile = To create the container image.

- shiny-server.conf = Shiny app server configurations.

- shiny-server.sh = To execute shiny app server.

## 2. Create app.R

We will create a relatively simple shiny app with a decent UI. The following packages can be used initially.

- [shiny](https://shiny.rstudio.com/) - To develop web apps with R.

- [shinydashboard ](https://rstudio.github.io/shinydashboard/)— Use shiny to create dashboards.

- [shinydashboardPlus ](https://rinterface.github.io/shinydashboardPlus/articles/shinydashboardPlus.html)— Additional features for shinydashboard package.

- [shinythemes ](https://rstudio.github.io/shinythemes/)— Some themes for the shiny app.

You can use RStudio to code and test this locally by simply changing `img_dir` path from `"/srv/shiny-server/images"` to `"images"` .

```r
library(shiny)
library(shinydashboard)
library(shinydashboardPlus)
library(shinythemes)

img_dir = "/srv/shiny-server/images"


ui <- fluidPage(theme = shinytheme("cyborg"),
  navbarPage(
    title = "Shiny Dashboard App",
    windowTitle = "Shiny Dashboard App",
    id = "tabactive",
    tabPanel("Tab1", 
             icon = icon("table"),
             tags$body(
               dashboardPage(
                 dashboardHeader(title = "Tab1", disable = TRUE),
                 dashboardSidebar(
                   width = "250",
                   sidebarMenu(id = "sidebarmenu",
                               menuItem("Menu1", tabName = "menu1", icon = icon("chart-line"))
                   ),
                   minified = FALSE
                 ),
                 dashboardBody(
                   tabItems(
                     tabItem(tabName = "menu1", 
                             fluidRow(box("Image 1",
                                      imageOutput("img_1", height = "auto"))
                             )
                     )
      
                   )
                 )
               )
             )
            )
  )
  
)

server <- shinyServer(function(input, output, session){
  
  output$img_1 <- renderImage({
    list(src = paste(img_dir, "img_1.jpg", sep = "/"),
         contentType = "image/jpg",
         width = "100%",
         height = "auto",
         alt = "img_1_err")
  }, deleteFile = FALSE)
  
})

shinyApp(ui = ui, server = server)
```

In addition, you can use the following packages to implement more functionalities.

- [shinyBS ](https://github.com/ebailey78/shinyBS)— More features for shiny, such as [tooltips](http://www.endmemo.com/r/bstooltip.php).

- [tseries](https://cran.r-project.org/web/packages/tseries/index.html) - To work with time series data.

- [forecast ](https://cran.r-project.org/web/packages/forecast/index.html)— To forecast with data. ([principles](https://otexts.com/fpp2/))

- [data.table](https://cran.r-project.org/web/packages/data.table/vignettes/datatable-intro.html) - An enhanced and high-performance version of [data.frame](https://www.rdocumentation.org/packages/base/versions/3.6.2/topics/data.frame)

- [DT](https://cran.r-project.org/web/packages/DT/index.html) - To visualize DataTables.

- [ggplot2](https://cran.r-project.org/web/packages/ggplot2/index.html) - Plot data

- [plotly ](https://plotly.com/r/)— Visualize plots

- [bigrquery ](https://cloud.google.com/vertex-ai/docs/workbench/user-managed/use-r-bigquery)— Load data from [GCP BigQuery](https://cloud.google.com/bigquery) (you may need "_**[readr](https://cran.r-project.org/web/packages/readr/index.html)**_" package too.)

The dashboard may look as follows.

![Dashboard UI](https://miro.medium.com/1*WNpBN21v69LMJagFLT2_VA.png)

## 3. Create the Dockerfile

The Dockerfile should look as follows.

```bash
# get shiny server plus tidyverse packages image
FROM rocker/shiny-verse:latest

# system libraries of general use
RUN apt-get update && apt-get install -y \
    curl \
    sudo \
    pandoc \
    pandoc-citeproc \
    libcurl4-gnutls-dev \
    libcairo2-dev \
    libxt-dev \
    libssl-dev \
    libssh2-1-dev\
    ## clean up
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/ \
    && rm -rf /tmp/downloaded_packages/ /tmp/*.rds

# install R packages required 
# (change it depending on the packages you need)
RUN R -e "install.packages('shiny', repos='http://cran.rstudio.com/')"
RUN R -e "install.packages('shinydashboard', repos='http://cran.rstudio.com/')"
RUN R -e "install.packages('shinydashboardPlus', repos='http://cran.rstudio.com/')"
RUN R -e "install.packages('shinythemes', repos='http://cran.rstudio.com/')"

# clean up
RUN rm -rf /tmp/downloaded_packages/ /tmp/*.rds

# Copy configuration files into the Docker image
COPY shiny-server.conf  /etc/shiny-server/shiny-server.conf

# Copy shiny app into the Docker image
COPY app /srv/shiny-server/

RUN rm /srv/shiny-server/index.html

# Make the ShinyApp available at port 5000
EXPOSE 5000

# Copy shiny app execution file into the Docker image
COPY shiny-server.sh /usr/bin/shiny-server.sh

USER shiny

CMD ["/usr/bin/shiny-server"]
```

Remember to add lines to install the packages you are using in "**app.R**". In addition, use the same port number (e.g. - 5000) throughout the process.

## 4. Create shiny-server.conf

Remember to use the same port number (e.g. - 5000).

```bash
# Define the user we should use when spawning R Shiny processes
run_as shiny;

# Define a top-level server which will listen on a port
server {
  # Instruct this server to listen on port 5000.
  listen 5000;

# Define the location available at the base URL
  location / {

# Run this location in 'site_dir' mode, which hosts the entire directory
# tree at '/srv/shiny-server'
    site_dir /srv/shiny-server;
    
    # Define where we should put the log files for this location
    log_dir /var/log/shiny-server;
    
    # Should we list the contents of a (non-Shiny-App) directory when the user 
    # visits the corresponding URL?
    directory_index on;
  }
}
```

## 5. Create shiny-server.sh

```bash
#!/bin/sh

# Make sure the directory for individual app logs exists
mkdir -p /var/log/shiny-server
chown shiny.shiny /var/log/shiny-server

exec shiny-server >> /var/log/shiny-server.log 2>&1
```

## 6. Create the docker image and push it to GCP

Open a terminal in "_**CloudRunShinyDashboard**_" directory. Let's define the following terms.

- {PROJECT_ID} = GCP Project ID (e.g. = shiny-project)

- {REGION} = GCP Project Region (e.g. = us-central1)

- {REPO_NAME} = GCP Artifact Registry Repository Name (e.g. = shiny-repo)

- {IMAGE_NAME} = Container Image Name (e.g. = shiny-image)

- {IMAGE_TAG} = Container Image Tag (e.g. = v0.1, v1.2)

### 6.1 Create the image

Don't forget the dot `.` at the end of the command.

```bash
docker build --tag={REGION}-docker.pkg.dev/{PROJECT_ID}/{REPO_NAME}/{IMAGE_NAME}:{IMAGE_TAG} .
```

You can test the app by running the image locally, as long as it doesn't require any additional permission from GCP. (e.g.— if you're using "**bigrquery**" package). Make sure to use the same port number (e.g. - 5000) as before.

```bash
docker run -d -p 5000:5000 {REGION}-docker.pkg.dev/{PROJECT_ID}/{REPO_NAME}/{IMAGE_NAME}:{IMAGE_TAG}
```

### 6.2 Create GCP Artifact Registry repository

```bash
gcloud beta artifacts repositories create {REPO_NAME} --repository-format=docker --location={REGION}
```

### 6.3 Add permission in order to push the image

```bash
gcloud auth configure-docker {REGION}-docker.pkg.dev
```

### 6.4 Push the image to the created repo

```bash
docker push {REGION}-docker.pkg.dev/{PROJECT_ID}/{REPO_NAME}/{IMAGE_NAME}:{IMAGE_TAG}
```

## 7. Deploy the image with Cloud Run

Navigate to Cloud Run on GCP Console. Go to create a new service. Make the following changes.

- Choose "**Deploy one revision from an existing container image**".

![Deploy one revision from an existing container image](https://miro.medium.com/1*hOxdX5kOsqJpO_omg0HGvA.png)

- Click "**Select**" in "**Container image URL"** field. Choose the pushed image from "Artifact Registry".

- Service name = something like "**shiny-dashboard-test**". (Make it as unique as possible.)

- Region = {REGION} from **Section 6**.

- CPU allocation and pricing = generally "**CPU is only allocated during request processing**" (if you're not concerned about pricing "**CPU is always allocated**")

![CPU allocation and pricing](https://miro.medium.com/1*42goW8qK5iSor9tXxxWunQ.png)

- Autoscaling instances
- Min=0, if you want to shut the container down, when there are no users for some time. Min≥1, if you want to run the container all the time. (Note that, Min ≤ Max. )
- Max=1, if only a small group of people (5~10) are using the dashboard (e.g. - Management) once in a while. Otherwise, set "Max" accordingly. However, note that "[Session affinity](https://cloud.google.com/run/docs/configuring/session-affinity)" of Cloud Run is still in the [preview stage](https://cloud.google.com/run/docs/release-notes#June_08_2022) (at the moment of writing). Therefore, [things could go haywire](https://cloud.google.com/blog/topics/developers-practitioners/improve-responsiveness-session-affinity-cloud-run), if there are more than 1 instance and "Session affinity" does not work properly.

- Allow all traffic.

![Ingress and Authentication](https://miro.medium.com/1*pyHhZPofJIbnnFnfEh8O4Q.png)

- Authentication = Allow unauthenticated invocations.

- Container port = 5000

![Container port](https://miro.medium.com/1*9ymh25MRtyHjDWVgX8uU9g.png)

- Memory = 4GB (Depends on your shiny app)

- CPU = 2 (Depends on your shiny app)

- Maximum requests per container = 80 to 1000 (Depends on the number of users and your shiny app)

- Execution environment = "First generation" is sufficient.

- Session affinity = tick, if max instances > 1.

![Session affinity](https://miro.medium.com/1*8iPpKZgAYG_tObBNLhWx6Q.png)

Click "**Create**". After a little while, the service "**shiny-dashboard-test**" will finish deploying. You'll see the URL next to the service name. (something like "_**https://{SERVICE_NAME}-{SERVICE_ID}-{REGION_SHORTENED}.a.run.app**_"). Now, _**anyone on the internet**_ can access your dashboard with this link.

---

## References

- [https://www.youtube.com/watch?v=uu97P0IWsO0](https://www.youtube.com/watch?v=uu97P0IWsO0)

- [https://towardsdatascience.com/dockerizing-and-deploying-a-shiny-dashboard-on-google-cloud-a990ceb3c33a](https://towardsdatascience.com/dockerizing-and-deploying-a-shiny-dashboard-on-google-cloud-a990ceb3c33a)

***

## Appendix

*Note created on [[2024-06-22]] and last modified on [[2024-06-22]].*

### See Also

- 

### Backlinks

```dataview
LIST FROM [[ Deploying an R Shiny Dashboard on GCP Cloud Run]] AND -"CHANGELOG" AND -"04-RESOURCES/Articles/Medium/ Deploying an R Shiny Dashboard on GCP Cloud Run"
```

***

(c) [No Clocks, LLC](https://github.com/noclocks) | 2024