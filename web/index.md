---
layout: page
title: Packages Documentation
tagline: DataSHIELD Packages Documentation
---

## Overview

* [Client Packages](#client)
* [Server Packages](#server)



<a name="client"> </a>
## Client Packages

### dsbaseclient

Installation command:

	# Install dsbaseclient package (client side)
	install.packages('dsbaseclient', repos=c(getOption('repos'), 'http://datashield.github.io/cran'), dependencies=TRUE)

Functions:


* [datashield.contour.plot](dsbaseclient/datashield.contour.plot.html) Creates a contour plot
* [datashield.heatmap.plot](dsbaseclient/datashield.heatmap.plot.html) Plots a heatmap
* [datashield.histogram](dsbaseclient/datashield.histogram.html) Plots a histogram
* [datashield.table.2d](dsbaseclient/datashield.table.2d.html) Creates a 2D table

Sources:

* [DESCRIPTION](https://raw.github.com/datashield/dsbaseclient/1.1/DESCRIPTION)
* [dsbaseclient 1.1](https://github.com/datashield/dsbaseclient/tree/1.1)


### dsmodellingclient

Installation command:

	# Install dsmodellingclient package (client side)
	install.packages('dsmodellingclient', repos=c(getOption('repos'), 'http://datashield.github.io/cran'), dependencies=TRUE)

Functions:


* [datashield.glm](dsmodellingclient/datashield.glm.html) Runs a combined GLM analysis of non-pooled data

Sources:

* [DESCRIPTION](https://raw.github.com/datashield/dsmodellingclient/1.0/DESCRIPTION)
* [dsmodellingclient 1.0](https://github.com/datashield/dsmodellingclient/tree/1.0)


### dsteststatsclient

Installation command:

	# Install dsteststatsclient package (client side)
	install.packages('dsteststatsclient', repos=c(getOption('repos'), 'http://datashield.github.io/cran'), dependencies=TRUE)

Functions:


* [datashield.chisq.test](dsteststatsclient/datashield.chisq.test.html) Runs Pearson's Chi-squared Test on non-pooled data
* [datashield.t.test](dsteststatsclient/datashield.t.test.html) Runs a student's t-test on non-pooled data

Sources:

* [DESCRIPTION](https://raw.github.com/datashield/dsteststatsclient/1.0/DESCRIPTION)
* [dsteststatsclient 1.0](https://github.com/datashield/dsteststatsclient/tree/1.0)


<a name="server"> </a>
## Server Packages

### dsbase

Installation command:

	# Install dsbase package (server side)
	library(opaladmin)
	o<-opal.login(...)
	dsadmin.install_package(o, 'dsbase')

Functions:


* [contour.plot.1](dsbase/contour.plot.1.html) Computes a grid-density object required to generate a contour plot.
* [histogram.1](dsbase/histogram.1.html) Computes a histogram of the given data values without plotting.
* [mean](dsbase/mean.html) Computes the mean statistic for vectors with more than 4 entries
* [order.frame](dsbase/order.frame.html) Orders a dataframme by a specific column
* [product](dsbase/product.html) Computes the product.
* [sum](dsbase/sum.html) Computes the sum.
* [summary](dsbase/summary.html) Summary with length constraint.
* [table.2d](dsbase/table.2d.html) Generates a 2D table
* [var](dsbase/var.html) Variance of a vector or a matrix with NA values stripped before computation proceeds.

Sources:

* [DESCRIPTION](https://raw.github.com/datashield/dsbase/1.1/DESCRIPTION)
* [dsbase 1.1](https://github.com/datashield/dsbase/tree/1.1)


### dsmodelling

Installation command:

	# Install dsmodelling package (server side)
	library(opaladmin)
	o<-opal.login(...)
	dsadmin.install_package(o, 'dsmodelling')

Functions:


* [glm.ds](dsmodelling/glm.ds.html) Fits a generalized linear model

Sources:

* [DESCRIPTION](https://raw.github.com/datashield/dsmodelling/1.0/DESCRIPTION)
* [dsmodelling 1.0](https://github.com/datashield/dsmodelling/tree/1.0)


### dsteststats

Installation command:

	# Install dsteststats package (server side)
	library(opaladmin)
	o<-opal.login(...)
	dsadmin.install_package(o, 'dsteststats')

Functions:


* [t.test](dsteststats/t.test.html) Performs one and two sample t-tests

Sources:

* [DESCRIPTION](https://raw.github.com/datashield/dsteststats/1.0/DESCRIPTION)
* [dsteststats 1.0](https://github.com/datashield/dsteststats/tree/1.0)
