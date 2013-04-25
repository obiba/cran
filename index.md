---
layout: page
title: DataSHIELD CRAN
tagline: The Comprehensive R Archive Network of DataSHIELD
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
	o<-opal.login('dsadmin', 'password', 'https://some-opal-host:8443',opts=list(ssl.verifyhost=0,ssl.verifypeer=0,sslversion=3))

	# Install all DataSHIELD packages and dependencies on R server
	dsadmin.install_package(o, 'datashield')

## Full Documentation

<div class="row-fluid">
  <div class="span6"><a href="http://datashield.github.io/documentation/users.html" class="btn btn-primary">DataSHIELD Users Documentation</a></div>
</div>
<br/>
<div class="row-fluid">
  <div class="span6"><a href="http://datashield.github.io/documentation/administrators.html" class="btn btn-primary">DataSHIELD Administrators Documentation</a></div>
</div>

## Packages

<div class="row-fluid">
  <div class="span6"><a href="src/contrib" class="btn btn-inverse">DataSHIELD Packages Listing</a></div>
</div>
<br/>
<div class="row-fluid">
  <div class="span6"><a href="web/packages" class="btn btn-inverse">DataSHIELD Packages Documentation</a></div>
</div>
