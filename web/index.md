---
layout: page
title: Packages Documentation
tagline: DataSHIELD Packages Documentation
---



<a name="client"> </a>
## Client Packages

### dsbaseclient

Installation command:

	# Install dsbaseclient package (client side)
	install.packages('dsbaseclient', repos=c(getOption('repos'), 'http://datashield.github.io/cran'), dependencies=TRUE)

Description:

[DESCRIPTION](dsbaseclient/DESCRIPTION)

Functions:

* [datashield.contour.plot](dsbaseclient/datashield.contour.plot.html) Creates a contour plot
* [datashield.heatmap.plot](dsbaseclient/datashield.heatmap.plot.html) Plots a heatmap
* [datashield.histogram](dsbaseclient/datashield.histogram.html) Plots a histogram
* [datashield.table.2d](dsbaseclient/datashield.table.2d.html) Creates a 2D table

### dsmodellingclient

Installation command:

	# Install dsmodellingclient package (client side)
	install.packages('dsmodellingclient', repos=c(getOption('repos'), 'http://datashield.github.io/cran'), dependencies=TRUE)

Description:

[DESCRIPTION](dsmodellingclient/DESCRIPTION)

Functions:

* [datashield.glm](dsmodellingclient/datashield.glm.html) Runs a combined GLM analysis of non-pooled data

### dsteststatsclient

Installation command:

	# Install dsteststatsclient package (client side)
	install.packages('dsteststatsclient', repos=c(getOption('repos'), 'http://datashield.github.io/cran'), dependencies=TRUE)

Description:

[DESCRIPTION](dsteststatsclient/DESCRIPTION)

Functions:

* [datashield.chisq.test](dsteststatsclient/datashield.chisq.test.html) Runs Pearson's Chi-squared Test on non-pooled data
* [datashield.t.test](dsteststatsclient/datashield.t.test.html) Runs a student's t-test on non-pooled data

<a name="server"> </a>
## Server Packages

### dsbase

Installation command:

	# Install dsbase package (server side)
	library(opaladmin)
	o<-opal.login(...)
	dsadmin.install_package(o, 'dsbase')

Description:

[DESCRIPTION](dsbase/DESCRIPTION)

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

### dsmodelling

Installation command:

	# Install dsmodelling package (server side)
	library(opaladmin)
	o<-opal.login(...)
	dsadmin.install_package(o, 'dsmodelling')

Description:

[DESCRIPTION](dsmodelling/DESCRIPTION)

Functions:

* [glm.ds](dsmodelling/glm.ds.html) Fits a generalized linear model

### dsteststats

Installation command:

	# Install dsteststats package (server side)
	library(opaladmin)
	o<-opal.login(...)
	dsadmin.install_package(o, 'dsteststats')

Description:

[DESCRIPTION](dsteststats/DESCRIPTION)

Functions:

* [t.test](dsteststats/t.test.html) Performs one and two sample t-tests