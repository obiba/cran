---
layout: page
title: dsbaseclient
tagline: dsbaseclient Package Documentation
---


### dsbaseclient

Installation command:

	# Install dsbaseclient package (client side)
	install.packages('dsbaseclient', repos=c(getOption('repos'), 'http://cran.datashield.org'), dependencies=TRUE)

Functions:


* [ds.append2df](ds.append2df.html) Append a vector/column to a dataframe
* [ds.asCharacter](ds.asCharacter.html) Turns a vector into character type
* [ds.asNumeric](ds.asNumeric.html) Turns a vector into numerical type
* [ds.c](ds.c.html) Combines values into a vector or list
* [ds.checkvar](ds.checkvar.html) Checks if all variables do exist and are not empty
* [ds.contourplot](ds.contourplot.html) Creates a contour plot
* [ds.createfactor](ds.createfactor.html) Ensures factors have same classes across studies
* [ds.densitygrid](ds.densitygrid.html) Generates a density grid with or without a priori defined limits
* [ds.exists](ds.exists.html) Checks if an object is defined on the server side
* [ds.heatmapplot](ds.heatmapplot.html) Generates a heatmap plot for merged datasets
* [ds.histogram](ds.histogram.html) Plots a histogram
* [ds.isNA](ds.isNA.html) Checks if a vector is empty
* [ds.isPresent](ds.isPresent.html) Checks if a vector is in a table assigned to R
* [ds.isValid](ds.isValid.html) Checks if an variable is valid
* [ds.length](ds.length.html) Gets the length of a vector
* [ds.mean](ds.mean.html) Computes the statistical mean of a given vector (for several studies separately or combined)
* [ds.names](ds.names.html) Gets the names of items in a list
* [ds.product](ds.product.html) Computes a product
* [ds.quantilemean](ds.quantilemean.html) Plots a histogram
* [ds.rowcolCalc](ds.rowcolCalc.html) Computes sums and means of rows or columns of numeric arrays
* [ds.subsetdata](ds.subsetdata.html) Generates a valid subsets of a dataset
* [ds.subsetvar](ds.subsetvar.html) Generates a valid binary variable from a continuous variable
* [ds.summary](ds.summary.html) Generates the summary of a numeric or factor vector
* [ds.t.test](ds.t.test.html) Runs a student's t-test on horizontally partitioned data
* [ds.table1d](ds.table1d.html) Creates 1-dimensional contingency tables - potentially disclosive data are suppressed
* [ds.table2d](ds.table2d.html) Creates 2-dimensional contingency tables - potentially disclosive data are suppressed
* [ds.var](ds.var.html) Computes the variance of a given vector (for several studies separately or combined)
* [table1dhelper1](table1dhelper1.html) Checks validity of tabulated factor variable
* [table1dhelper2](table1dhelper2.html) Combines output of server side function 'table1d.ds'
* [table1dhelper3](table1dhelper3.html) Generates percents from counts returned by the function 'table1d.ds'
* [table1dhelper4](table1dhelper4.html) Finalizes the output of the function 'table1d.ds'
* [table2dhelper1](table2dhelper1.html) Checks validity of 2D-tables
* [table2dhelper2](table2dhelper2.html) Generates a valid array
* [table2dhelper3](table2dhelper3.html) Generates percents from counts returned by the function 'table2d.ds'
* [table2dhelper4](table2dhelper4.html) Finalizes the output of the function 'table2d.ds'

Sources:

* [DESCRIPTION](https://raw.github.com/datashield/dsbaseclient/2.3/DESCRIPTION)
* [dsbaseclient 2.3](https://github.com/datashield/dsbaseclient/tree/2.3)
