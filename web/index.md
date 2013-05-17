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

* [DESCRIPTION](https://raw.github.com/datashield/dsbaseclient/1.3/DESCRIPTION)
* [dsbaseclient 1.3](https://github.com/datashield/dsbaseclient/tree/1.3)


### dsmodellingclient

Installation command:

	# Install dsmodellingclient package (client side)
	install.packages('dsmodellingclient', repos=c(getOption('repos'), 'http://datashield.github.io/cran'), dependencies=TRUE)

Functions:


* [datashield.glm](dsmodellingclient/datashield.glm.html) Runs a combined GLM analysis of non-pooled data

Sources:

* [DESCRIPTION](https://raw.github.com/datashield/dsmodellingclient/1.1/DESCRIPTION)
* [dsmodellingclient 1.1](https://github.com/datashield/dsmodellingclient/tree/1.1)


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


* [N.a.by.b](dsbase/N.a.by.b.html) Counts number of observations by category
* [contour.plot.1](dsbase/contour.plot.1.html) Computes a grid-density object required to generate a contour plot.
* [density.grid.ag](dsbase/density.grid.ag.html) Generate a density grid
* [factor.create.3](dsbase/factor.create.3.html) Generates a factor variable
* [histogram.1](dsbase/histogram.1.html) Computes a histogram of the given data values without plotting.
* [mean](dsbase/mean.html) Computes the mean statistic for vectors with more than 4 entries
* [mean.a.by.b](dsbase/mean.a.by.b.html) Computes the mean of a variable by another variable
* [odds.ratio](dsbase/odds.ratio.html) Calculates odds ratio and its 95 percent confidence interval
* [order.frame](dsbase/order.frame.html) Orders a dataframme by a specific column
* [product](dsbase/product.html) Computes the product.
* [quantile.mean.ds](dsbase/quantile.mean.ds.html) Provides quantiles and mean information without maximum and minimum
* [replace.9.na](dsbase/replace.9.na.html) Replaces entries with value '9' by missing data
* [replace.99.na](dsbase/replace.99.na.html) Replaces entries with value '99' by missing data
* [replace.999.na](dsbase/replace.999.na.html) Replaces entries with value '999' by missing data
* [replace.9999.na](dsbase/replace.9999.na.html) Replaces entries with value '9999' by missing data
* [replace.na.999](dsbase/replace.na.999.html) Replaces missing values by '999'
* [replace.not.obese.na](dsbase/replace.not.obese.na.html) Replaces missing values by '999'
* [rm.col.dataframe](dsbase/rm.col.dataframe.html) Deletes a column from a dataframe
* [sum](dsbase/sum.html) Computes the sum.
* [summary](dsbase/summary.html) Summary with length constraint.
* [table.1d](dsbase/table.1d.html) Generates 'valid' 1-dimensional table for all sources
* [table.2d](dsbase/table.2d.html) Generates a 2D table
* [var](dsbase/var.html) Variance of a vector or a matrix with NA values stripped before computation proceeds.
* [var.a.by.b](dsbase/var.a.by.b.html) Computes the variance of a variable by another variable

Sources:

* [DESCRIPTION](https://raw.github.com/datashield/dsbase/1.3/DESCRIPTION)
* [dsbase 1.3](https://github.com/datashield/dsbase/tree/1.3)


### dsmodelling

Installation command:

	# Install dsmodelling package (server side)
	library(opaladmin)
	o<-opal.login(...)
	dsadmin.install_package(o, 'dsmodelling')

Functions:


* [glm.ds](dsmodelling/glm.ds.html) Fits a generalized linear model

Sources:

* [DESCRIPTION](https://raw.github.com/datashield/dsmodelling/1.1/DESCRIPTION)
* [dsmodelling 1.1](https://github.com/datashield/dsmodelling/tree/1.1)


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
