---
layout: page
title: OBiBa CRAN
tagline: The Comprehensive R Archive Network of OBiBa
---
{% include JB/setup %}

## Quick Start

Client side install:

	# Install all DataSHIELD packages
	install.packages('datashieldclient', repos=c(getOption('repos'), 'http://cran.obiba.org'), dependencies=TRUE)

Server side install:

	# Install opaladmin package
	install.packages('opaladmin', repos=c(getOption('repos'), 'http://cran.obiba.org'), dependencies=TRUE)

	# Login in Opal
	library(opaladmin)
	o<-opal.login('dsadmin', 'password', 'https://some-opal-host:8443')

	# Install all DataSHIELD packages and dependencies on R server
	dsadmin.install_package(o, 'datashield')

## Documentation

<a href="web" class="btn btn-primary">Packages Documentation</a>

## Packages

List of the packages available:

<a href="https://github.com/obiba/cran/tree/gh-pages/src/contrib" class="btn btn-inverse">OBiBa and DataSHIELD Packages Listing</a>
