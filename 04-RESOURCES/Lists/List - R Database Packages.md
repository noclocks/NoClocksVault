---
creation_date: 2024-06-23
modification_date: 2024-06-23
author: Jimmy Briggs <jimmy.briggs@jimbrig.com>
tags:
  - Type/List
  - Topic/Dev/R
  - Status/WIP
aliases:
  - R Database Packages
  - Database Packages for R
publish: true
permalink:
description:
image:
cssclasses:
---

# R Database Packages List

```table-of-contents
title: ## Contents 
style: nestedList # TOC style (nestedList|inlineFirstLevel)
minLevel: 1 # Include headings from the specified level
maxLevel: 4 # Include headings up to the specified level
includeLinks: true # Make headings clickable
debugInConsole: false # Print debug info in Obsidian console
```

## Overview

> [!SOURCE] Sources:
> - *[CRAN Task View: Databases with R (r-project.org)](https://cran.r-project.org/web/views/Databases.html)*

As datasets become larger and larger, it is impossible for people to save them in traditional file formats such as excel spreadsheets, raw text files, etc., which could not fit on devices with limited storage and could not be easily shared across collaborators. Instead, people nowadays tend to store data in databases for more scalable and reliable data management.

Database systems are often classified based on the [database models](https://en.wikipedia.org/wiki/Database_model) that they support. [Relational databases](https://en.wikipedia.org/wiki/Relational_database) became dominant in the 1980s. The data in relational databases is modeled as rows and columns in a series of tables with the use of [SQL](https://en.wikipedia.org/wiki/SQL) to express the logic for writing and querying data. The tables are relational, e.g. you have a user who uses your software and those software have creators and contributors. Non-relational databases became popular in recent years due to huge demand in storing unstructured data with the use of [NoSQL](https://en.wikipedia.org/wiki/NoSQL) as the query language. Users generally don’t need to define the data schema up front. If there are changing requirements in the applications, non-relational databases can be much easier to use and manage.

## List

The list will be broken out into the following sections or categories:
- Relational Databases
- Non-Relational Databases
- Database Tools
- Other

### Relational Databases

- The [DBI](https://cran.r-project.org/web/packages/DBI/index.html) package provides a database interface definition for communication between [[Tool - R|R]] and [[Relational Database Management Systems (RDMS)]]. It’s worth noting that some packages try to follow this interface definition (i.e. "DBI-compliant") but many existing packages don’t.
- The [RODBC](https://cran.r-project.org/web/packages/RODBC/index.html) package provides access to databases through an ODBC interface. This package is maintained by the R Core Team and depends only on base R. See alternative odbc package below.
- The [odbc](https://cran.r-project.org/web/packages/odbc/index.html) package provides a DBI-compliant interface to ODBC drivers. This package is maintained by RStudio and has a number of package dependencies. See alternative RODBC package above.
- The [RMariaDB](https://cran.r-project.org/web/packages/RMariaDB/index.html) package provides a DBI-compliant interface to [MariaDB](https://mariadb.org/) and [MySQL](https://www.mysql.com/).
- The [RMySQL](https://cran.r-project.org/web/packages/RMySQL/index.html) package provides the interface to MySQL. Note that this is the legacy DBI interface to MySQL and MariaDB based on old code ported from S-PLUS. A modern MySQL client based on Rcpp is available from the RMariaDB package we listed above.
- Packages for [PostgreSQL](https://www.postgresql.org/), an open-source relational database:
    - The [RPostgreSQL](https://cran.r-project.org/web/packages/RPostgreSQL/index.html) package and [RPostgres](https://cran.r-project.org/web/packages/RPostgres/index.html) package both provide fully DBI-compliant Rcpp-backed interfaces to PostgreSQL.
    - The [rpostgis](https://cran.r-project.org/web/packages/rpostgis/index.html) package provides the interface to its spatial extension [PostGIS](http://postgis.net/).
    - The [RGreenplum](https://cran.r-project.org/web/packages/RGreenplum/index.html) provides a fully DBI-compliant interface to [Greenplum](https://greenplum.org/), an open-source parallel database on top of PostgreSQL.
- The [ROracle](https://cran.r-project.org/web/packages/ROracle/index.html) package is a DBI-compliant [Oracle database](https://www.oracle.com/database/) driver based on the OCI.
- Packages for [SQLite](http://www.sqlite.org/), a self-contained, high-reliability, embedded, full-featured, public-domain, SQL database engine:
    - The [RSQLite](https://cran.r-project.org/web/packages/RSQLite/index.html) package embeds the SQLite database engine in R and provides an interface compliant with the DBI package.
    - The [filehashSQLite](https://cran.r-project.org/web/packages/filehashSQLite/index.html) package is a simple key-value database using SQLite as the backend.
    - The [liteq](https://cran.r-project.org/web/packages/liteq/index.html) package provides temporary and permanent message queues for R, built on top of SQLite.
- The [duckdb](https://cran.r-project.org/web/packages/duckdb/index.html) package provides a DBI interface to [DuckDb](https://duckdb.org/), an in-process SQL OLAP database management system.
- The [bigrquery](https://cran.r-project.org/web/packages/bigrquery/index.html) package provides the interface to [Google BigQuery](https://developers.google.com/bigquery/), Google’s fully managed, petabyte scale, low cost analytics data warehouse.
- The [RDruid](https://github.com/druid-io/RDruid) package on GitHub provides the interface to [Apache Druid](https://druid.apache.org/), a high performance analytics data store for event-driven data.
- The [RH2](https://cran.r-project.org/web/packages/RH2/index.html) package provides the interface to [H2 Database Engine](http://www.h2database.com/), the Java SQL database.
- The [influxdbr](https://cran.r-project.org/web/packages/influxdbr/index.html) package provides the interface to [InfluxDB](https://docs.influxdata.com/influxdb), a time series database designed to handle high write and query loads.
- The [RPresto](https://cran.r-project.org/web/packages/RPresto/index.html) package implements a DBI-compliant interface to [Presto](https://prestodb.io/), an open source distributed SQL query engine for running interactive analytic queries against data sources of all sizes ranging from gigabytes to petabytes.
- The [RJDBC](https://cran.r-project.org/web/packages/RJDBC/index.html) package is an implementation of R’s DBI interface using JDBC as a back-end. This allows R to connect to any DBMS that has a JDBC driver.
- The [implyr](https://cran.r-project.org/web/packages/implyr/index.html) package provides the back-end for [Apache Impala](https://impala.apache.org/), which enables low-latency SQL queries on data stored in the Hadoop Distributed File System (HDFS), Apache HBase, Apache Kudu, Amazon Simple Storage Service (S3), Microsoft Azure Data Lake Store (ADLS), and Dell EMC Isilon.
- The [dbx](https://cran.r-project.org/web/packages/dbx/index.html) package provides intuitive functions for high performance batch operations and safe inserts/updates/deletes without writing SQL on top of [DBI](https://cran.r-project.org/web/packages/DBI/index.html). It is designed for both research and production environments and supports multiple database backends such as Postgres, MySQL, MariaDB, and SQLite.
- The [sparklyr](https://cran.r-project.org/web/packages/sparklyr/index.html) package provides provides a [dplyr](https://cran.r-project.org/web/packages/dplyr/index.html) interface to [Apache Spark](https://spark.apache.org/) DataFrames as well as an R interface to Spark’s distributed machine learning pipelines.
- The [Hmisc](https://cran.r-project.org/web/packages/Hmisc/index.html) provides a wrapper function `Hmisc::mdb.get()` that uses the [mdbtools](https://github.com/mdbtools/mdbtools) utility to read from Microsoft Access database on Unix-alike systems.
- The [DatabaseConnector](https://cran.r-project.org/web/packages/DatabaseConnector/index.html) provides a DBI compatible interface to various database platforms using either JDBC or DBI drivers.

## Conclusion

***

## Appendix

*Note created on [[2024-06-23]] and last modified on [[2024-06-23]].*

### See Also

- 

### Backlinks

```dataview
LIST FROM [[List - R Database Packages]] AND -"CHANGELOG" AND -"04-RESOURCES/Lists/List - R Database Packages"
```

***

(c) [No Clocks, LLC](https://github.com/noclocks) | 2024
