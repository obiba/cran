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
	install.packages('dsbaseclient', repos=c(getOption('repos'), 'http://cran.datashield.org'), dependencies=TRUE)

Functions:


* [ds.checkvar](dsbaseclient/ds.checkvar.html) Checks if all variables do exist and are not empty
* [ds.contourplot](dsbaseclient/ds.contourplot.html) Creates a contour plot
* [ds.createfactor](dsbaseclient/ds.createfactor.html) Ensures factors have same classes across studies
* [ds.heatmapplot](dsbaseclient/ds.heatmapplot.html) Generates a heatmap plot for merged datasets
* [ds.histogram](dsbaseclient/ds.histogram.html) Plots a histogram
* [ds.isNA](dsbaseclient/ds.isNA.html) Checks if a vector is empty
* [ds.isPresent](dsbaseclient/ds.isPresent.html) Checks if a vector is in a table assigned to R
* [ds.mean](dsbaseclient/ds.mean.html) Calculates a mean of a given vector (for several studies separately or combined)
* [ds.quantilemean](dsbaseclient/ds.quantilemean.html) Plots a histogram
* [ds.summary](dsbaseclient/ds.summary.html) Generates the summary of a numeric or factor vector
* [ds.t.test](dsbaseclient/ds.t.test.html) Runs a student's t-test on horizontally partitioned data
* [ds.table1d](dsbaseclient/ds.table1d.html) Creates 1-dimensional contingency tables - potentially disclosive data are suppressed
* [ds.table2d](dsbaseclient/ds.table2d.html) Creates 2-dimensional contingency tables - potentially disclosive data are suppressed
* [table1dhelper1](dsbaseclient/table1dhelper1.html) Checks validity of tabulated factor variable
* [table1dhelper2](dsbaseclient/table1dhelper2.html) Combines output of server side function 'table1d.ds'
* [table1dhelper3](dsbaseclient/table1dhelper3.html) Generates percents from counts returned by the function 'table1d.ds'
* [table1dhelper4](dsbaseclient/table1dhelper4.html) Finalizes the output of the function 'table1d.ds'
* [table2dhelper1](dsbaseclient/table2dhelper1.html) Checks validity of 2D-tables
* [table2dhelper2](dsbaseclient/table2dhelper2.html) Generates a valid array
* [table2dhelper3](dsbaseclient/table2dhelper3.html) Generates percents from counts returned by the function 'table2d.ds'
* [table2dhelper4](dsbaseclient/table2dhelper4.html) Finalizes the output of the function 'table2d.ds'

Sources:

* [DESCRIPTION](https://raw.github.com/datashield/dsbaseclient/2.2/DESCRIPTION)
* [dsbaseclient 2.2](https://github.com/datashield/dsbaseclient/tree/2.2)


### dsmodellingclient

Installation command:

	# Install dsmodellingclient package (client side)
	install.packages('dsmodellingclient', repos=c(getOption('repos'), 'http://cran.datashield.org'), dependencies=TRUE)

Functions:


* [ds.glm](dsmodellingclient/ds.glm.html) Runs a combined GLM analysis of non-pooled data
* [glmhelper1](dsmodellingclient/glmhelper1.html) Extracts the elements of an expression of type call
* [glmhelper2](dsmodellingclient/glmhelper2.html) Extracts object variables from a regression formula

Sources:

* [DESCRIPTION](https://raw.github.com/datashield/dsmodellingclient/2.0/DESCRIPTION)
* [dsmodellingclient 2.0](https://github.com/datashield/dsmodellingclient/tree/2.0)


<a name="server"> </a>
## Server Packages

### dsbase

Installation command:

	# Install dsbase package (server side)
	library(opaladmin)
	o<-opal.login(...)
	dsadmin.install_package(o, 'dsbase')

Functions:


* [append2df.ds](dsbase/append2df.ds.html) Appends a column(s) to a dataframe
* [checkfactor.ds](dsbase/checkfactor.ds.html) Verifies that a factor vector is valid
* [createfactor.ds](dsbase/createfactor.ds.html) Generates a factor variable
* [densitygrid.ds](dsbase/densitygrid.ds.html) Generates a density grid with or without a priori defined limits
* [histogram.ds](dsbase/histogram.ds.html) Computes a histogram of the given data values without plotting.
* [isNA.ds](dsbase/isNA.ds.html) Checks if a vector is empty
* [isValid.ds](dsbase/isValid.ds.html) Checks if an input is valid
* [mean.ds](dsbase/mean.ds.html) Computes statistical mean of vector with more than 4 entries
* [nais1.ds](dsbase/nais1.ds.html) checks for NAs in a vector
* [names.ds](dsbase/names.ds.html) Returns the names of a list
* [product.ds](dsbase/product.ds.html) Computes a product
* [quantilemean.ds](dsbase/quantilemean.ds.html) Generates quantiles and mean information without maximum and minimum
* [range.ds](dsbase/range.ds.html) returns the minimum and maximum of a numeric vector
* [rowcolCalc.ds](dsbase/rowcolCalc.ds.html) Computes sums and means of rows or columns of numeric arrays
* [subsetdata.ds](dsbase/subsetdata.ds.html) Generates a valid subset of a dataset
* [subsetvar.ds](dsbase/subsetvar.ds.html) Derives a valid binary variable from a continuous variable
* [table1d.ds](dsbase/table1d.ds.html) Creates 1-dimensional contingency tables - potentially disclosive data are suppressed
* [table2d.ds](dsbase/table2d.ds.html) Creates 2-dimensional contingency tables - potentially disclosive data are suppressed
* [var.ds](dsbase/var.ds.html) Computes the variance of a numeric vector

Sources:

* [DESCRIPTION](https://raw.github.com/datashield/dsbase/2.2/DESCRIPTION)
* [dsbase 2.2](https://github.com/datashield/dsbase/tree/2.2)


### dsmodelling

Installation command:

	# Install dsmodelling package (server side)
	library(opaladmin)
	o<-opal.login(...)
	dsadmin.install_package(o, 'dsmodelling')

Functions:


* [glm.ds](dsmodelling/glm.ds.html) Fits a generalized linear model

Sources:

* [DESCRIPTION](https://raw.github.com/datashield/dsmodelling/2.0/DESCRIPTION)
* [dsmodelling 2.0](https://github.com/datashield/dsmodelling/tree/2.0)
