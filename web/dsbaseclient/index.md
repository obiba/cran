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


* [ds.NROW](ds.NROW.html) Returns the number of rows present in x
* [ds.append2df](ds.append2df.html) Appends a vector/column to a dataframe
* [ds.asCharacter](ds.asCharacter.html) Turns a vector into character type
* [ds.asList](ds.asList.html) Constructs an object of type list
* [ds.asMatrix](ds.asMatrix.html) Attempts to turn its argument into a matrix
* [ds.asNull](ds.asNull.html) Ignores its argument and returns the value 'NULL'.
* [ds.asNumeric](ds.asNumeric.html) Turns a vector into numerical type
* [ds.assign](ds.assign.html) Assigns an object to a name in the server side
* [ds.c](ds.c.html) Combines values into a vector or list
* [ds.cbind](ds.cbind.html) Combines objects by columns
* [ds.changerefgroup](ds.changerefgroup.html) changes a reference level of a factor
* [ds.checkvar](ds.checkvar.html) Checks if all variables do exist and are not empty
* [ds.class](ds.class.html) Retrieves the class of an object
* [ds.colnames](ds.colnames.html) Retrieves column names of a matrix-like object
* [ds.complete.cases](ds.complete.cases.html) Returns a logical vector indicating which cases are complete, i.e., have no missing values.
* [ds.contourplot](ds.contourplot.html) Creates a contour plot
* [ds.createfactor](ds.createfactor.html) Ensures factors have same classes across studies
* [ds.data.frame](ds.data.frame.html) Creates data frames
* [ds.densitygrid](ds.densitygrid.html) Generates a density grid with or without a priori defined limits
* [ds.dim](ds.dim.html) Retrieves the dimension of an object
* [ds.exists](ds.exists.html) Checks if an object is defined on the server side
* [ds.exp](ds.exp.html) Computes the exponential function
* [ds.fac2num](ds.fac2num.html) Turns a factor into numerical type
* [ds.heatmapplot](ds.heatmapplot.html) Generates a heatmap plot for merged datasets
* [ds.histogram](ds.histogram.html) Plots a histogram
* [ds.inform](ds.inform.html) Tells user if an object is defined on the server side.
* [ds.is.character](ds.is.character.html) a test of an object being of type 'character'
* [ds.is.factor](ds.is.factor.html) a test of an object being of type "factor"
* [ds.is.null](ds.is.null.html) tests whether an object is NULL
* [ds.is.numeric](ds.is.numeric.html) a test of an object being interpretable as numbers
* [ds.isNA](ds.isNA.html) Checks if a vector is empty
* [ds.isPresent](ds.isPresent.html) Checks if a vector is in a table assigned to R
* [ds.isValid](ds.isValid.html) Checks if an variable is valid
* [ds.length](ds.length.html) Gets the length of a vector
* [ds.levels](ds.levels.html) Provides access to the levels attribute of a factor variable
* [ds.list](ds.list.html) Function to construct a list object
* [ds.log](ds.log.html) Computes logarithms, by default natural logarithms
* [ds.makeBinary](ds.makeBinary.html) Generates a valid binary variable from a continuous variable
* [ds.mean](ds.mean.html) Computes the statistical mean of a given vector (for several studies separately or combined)
* [ds.meanByClass](ds.meanByClass.html) Computes the mean and standard deviation across categories
* [ds.names](ds.names.html) Gets the names of items in a list
* [ds.product](ds.product.html) Computes a product
* [ds.quantilemean](ds.quantilemean.html) Plots a histogram
* [ds.range](ds.range.html) Gets the range of a vector
* [ds.recodelevels](ds.recodelevels.html) recodes a categorical variable
* [ds.rowcolCalc](ds.rowcolCalc.html) Computes sums and means of rows or columns of numeric arrays
* [ds.subclass](ds.subclass.html) Generates valid subset(s) of a dataframe or a factor
* [ds.subset](ds.subset.html) Generates a valid subset of a table or a vector
* [ds.sum](ds.sum.html) Returns the sum of all the values present in its arguments
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

* [DESCRIPTION](https://raw.github.com/datashield/dsbaseclient/2.4.1/DESCRIPTION)
* [dsbaseclient 2.4.1](https://github.com/datashield/dsbaseclient/tree/2.4.1)
