---
creation_date: 2024-04-08
modification_date: 2024-04-08
author: Jimmy Briggs <jimmy.briggs@jimbrig.com>
tags:
  - Type/Note
  - Topic/Dev/R
  - Topic/Dev/R/Shiny
  - Topic/Dev
  - Status/WIP
aliases:
  - R Shiny Apps as Packages
publish: true
permalink:
description:
image:
cssclasses:
---

```table-of-contents
title: Contents 
style: nestedList # TOC style (nestedList|inlineFirstLevel)
minLevel: 1 # Include headings from the specified level
maxLevel: 4 # Include headings up to the specified level
includeLinks: true # Make headings clickable
debugInConsole: false # Print debug info in Obsidian console
```

## Overview

> [!NOTE]
> Creating [[R Shiny]] web applications as [[R]] packages comes with a variety of benefits that can enhance the development, distribution, and maintenance of the web application and the [[Software Development Life Cycle (SDLC)]].

Below is a list of the key advantages of creating [[R Shiny]] apps as R Packages:

1. **Modular Development:** Packaging Shiny applications allows for a modular approach to development. Functions, UI elements, and server logic can be organized into separate files and modules, making the codebase easier to navigate, understand, and debug.

2. **Reusability**: By encapsulating Shiny apps as packages, components such as UI elements, server functions, and helper functions can be easily reused across different projects. This not only saves development time but also ensures consistency across applications.
    
3. **Version Control**: Packaging your Shiny application makes it easier to version your app. You can track changes, manage dependencies, and ensure that your application remains compatible with specific versions of R and other packages.
    
4. **Dependency Management**: R packages allow for explicit declaration of package dependencies, ensuring that your Shiny application has all the necessary R packages installed with the correct versions. This reduces the risk of compatibility issues and makes it easier to manage the app’s environment.
    
5. **Testing and Quality Assurance**: The structure of an R package facilitates the implementation of automated testing frameworks. You can use testing frameworks to write unit tests for your app's functions, improving the reliability and quality of your application over time.
    
6. **Documentation**: Packaging encourages comprehensive documentation of functions, datasets, and app behavior. Well-documented packages are easier to use, maintain, and update. This is beneficial not only for the original developers but also for anyone else who might use or contribute to the app in the future.
    
7. **Distribution**: An R package can be easily shared and installed from repositories like CRAN or GitHub. This simplifies the process of distributing your Shiny application to a wider audience. Users can install the package and run the application with just a few commands, without needing to worry about setting up the environment or installing dependencies manually.
    
8. **Community and Collaboration**: Sharing your Shiny app as a package encourages collaboration and contributions from the wider R community. Others can more easily offer improvements, report issues, and contribute code, which can enhance the quality and functionality of your application.
    
9. **Professionalism and Credibility**: Packaging your Shiny application can lend a sense of professionalism and credibility to your work. A well-structured, documented, and tested package is a sign of quality and reliability, which can be important for both open-source projects and commercial applications.
    
By treating Shiny applications as R packages, developers can leverage the robust ecosystem of R to create more maintainable, shareable, and high-quality applications.

## Resources

### Books 

- [Engineering Shiny Book Chapter on Structuring App as Package ](https://engineering-shiny.org/structure.html#shiny-app-as-a-package) ⭐
- [Mastering Shiny Package Chapter](https://mastering-shiny.org/scaling-packaging.html) ⭐

### Posts

- [Workflow: Part 1](https://rtask.thinkr.fr/blog/building-big-shiny-apps-a-workflow-1/)
- [Workflow: Part 2](https://rtask.thinkr.fr/blog/building-big-shiny-apps-a-workflow-2/)

### Articles

- [Building Shiny App as a Package](https://rtask.thinkr.fr/building-a-shiny-app-as-a-package/) ⭐
- [Packaging Shiny Applications: A Deep Dive](https://www.mango-solutions.com/packaging-shiny-applications-a-deep-dive/) ⭐
- [Best Practices for Developing Robust Shiny Dashboards as R Packages](https://www.inwt-statistics.com/read-blog/best-practice-development-of-robust-shiny-dashboards-as-r-packages.html) ⭐
- [Dean Attali: Packaging Shiny Apps](https://deanattali.com/2015/04/21/r-package-shiny-app/)

## See Also

### R Package Development

These resources are for general package development within the R ecosystem. 

#### R-Core & CRAN

- [Official R Manuals](https://cran.r-project.org/manuals.html)
	- [Writing R Extensions](https://cran.r-project.org/doc/manuals/R-exts.html) ⭐
- [CRAN Task Views Homepage](https://cran.r-project.org/web/views/#:~:text=CRAN%20Task%20Views.%20CRAN%20task%20views%20aim%20to,can%20be%20automatically%20installed%20using%20the%20ctv%20package.) ⭐
	- [Robust Research](https://cran.r-project.org/web/views/ReproducibleResearch.html)
	- [Web Technologies](https://cran.r-project.org/web/views/WebTechnologies.html) ⭐


#### rOpenSci

- [rOpenSci Package DevGuide](https://devguide.ropensci.org/) ⭐

#### BioConductor

- [BioConductor Package Guidelines](https://www.bioconductor.org/developers/package-guidelines/) ⭐
- [Building Packages for BioConductor](https://www.bioconductor.org/developers/how-to/buildingPackagesForBioc/)
	- [Unit Testing](https://bioconductor.org/developers/how-to/unitTesting-guidelines/)
	- [Creating Workflow Packages](https://www.bioconductor.org/developers/how-to/workflows/) ⭐

#### RStudio

- [Developing Packages with RStudio](https://support.rstudio.com/hc/en-us/articles/200486488-Developing-Packages-with-RStudio)
- [Building, Testing and Distributing Packages]( https://support.rstudio.com/hc/en-us/articles/200486508-Building-Testing-and-Distributing-Packages)
- [Writing Package Documentation](https://support.rstudio.com/hc/en-us/articles/200532317-Writing-Package-Documentation)

- [RStudio Video: Auto-Magic Package Development](https://rstudio.com/resources/rstudioconf-2020/auto-magic-package-development/)


#### Books

> See [R-Project's Book Listing](https://www.r-project.org/doc/bib/R-books.html) for more resources on all topics R related.

- [R Packages (Hadley Wickham)](http://r-pkgs.had.co.nz/) ⭐
- [Advanced R (Hadley Wickam)](https://adv-r.hadley.nz/)
- [Advanced R Course (Florian Privé)](https://privefl.github.io/advr38book/)
- [R Package Workshop Bookdown](https://combine-australia.github.io/r-pkg-dev/) ⭐
	- [Best Practices: R Development Workshop](https://combine-australia.github.io/r-pkg-dev/good-practices-and-advice.html) ⭐
	- [Advanced Topics: R Development Workshop](https://combine-australia.github.io/r-pkg-dev/advanced-topics.html)
- [Package Development in R](https://iqss.github.io/dss-rbuild/)
- [Package Development Chapter in "Modern R with Tidyverse"](https://b-rodrigues.github.io/modern_R/package-development.html) ⭐


#### Tutorials

- [Writing an R package from scratch (Hilary Parker)]( https://hilaryparker.com/2014/04/29/writing-an-r-package-from-scratch/)
- [Writing an R package from scratch (Updated) (Thomas Westlake)](https://r-mageddon.netlify.com/post/writing-an-r-package-from-scratch/)
- [usethis workflow for package development (Emil Hvitfeldt)](https://www.hvitfeldt.me/blog/usethis-workflow-for-package-development/)
- [R package primer (Karl Broman)](https://kbroman.org/pkg_primer/) ⭐
- [R Package Development Pictorial (Matthew J Denny)](http://www.mjdenny.com/R_Package_Pictorial.html)
- [Building R Packages with Devtools (Jiddu Alexander)](http://www.jiddualexander.com/blog/r-package-building/)
- [Developing R packages (Jeff Leek)](https://github.com/jtleek/rpackages)
- [R Package Tutorial (Colautti Lab)](https://colauttilab.github.io/RCrashCourse/Package_tutorial.html)
- [Instructions for creating your own R package (MIT)](http://web.mit.edu/insong/www/pdf/rpackage_instructions.pdf)
- [How to Create and Distribute an R Package (Shian Su)](https://medium.com/@shiansu/how-to-create-and-distribute-an-r-package-a296217435dc)

#### Workshops

- [R Forwards Package Workshop (Chicago, February 23, 2019)](https://github.com/forwards/workshops/tree/master/Chicago2019)
- [Write your own R package (UBC STAT 545)](http://stat545.com/packages00_index.html)

#### Blogs

- [How to develop good R packages (for open science) (Malle Salmon)](https://masalmon.eu/2017/12/11/goodrpackages/)
- [R-Task: RMD First Development](https://rtask.thinkr.fr/when-development-starts-with-documentation/)⭐


#### Style

- [Tidyverse](https://style.tidyverse.org/)
- [Google](https://google.github.io/styleguide/Rguide.html)
- [Jean Fan](https://jef.works/R-style-guide/)
- [A Computational Analysis of the Dynamics of R Style Based on 94 Million Lines of Code from All CRAN Packages in the Past 20 Years. (Yen, C.Y., Chang, M.H.W., Chan, C.H.)](https://github.com/chainsawriot/rstyle)



### Shiny Modules

- <https://shiny.rstudio.com/articles/modules.html>


### Desktop Applications

- <https://www.travishinkelman.com/deploy-shiny-electron/>