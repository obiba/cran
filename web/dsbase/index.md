---
layout: page
title: dsbase
tagline: dsbase Package Documentation
---


### dsbase

Installation command:

	# Install dsbase package (server side)
	library(opaladmin)
	o<-opal.login(...)
	dsadmin.install_package(o, 'dsbase')

Functions:


* [amendlevelsDS](amendlevelsDS.html) Generates a factor variable
* [asFactorDS](asFactorDS.html) Turns a numeric vector into a factor vector
* [cbindDS](cbindDS.html) Combines objects by columns
* [changerefgroup.ds](changerefgroup.ds.html) changes a reference level of a factor
* [checkfactor.ds](checkfactor.ds.html) Verifies that a factor vector is valid
* [corDS](corDS.html) Computes correlation between two or more vectors
* [covDS](covDS.html) Computes covariance between two or more vectors
* [densitygrid.ds](densitygrid.ds.html) Generates a density grid with or without a priori defined limits
* [histogram.ds](histogram.ds.html) Computes a histogram of the given data values without plotting.
* [isNA.ds](isNA.ds.html) Checks if a vector is empty
* [isValid.ds](isValid.ds.html) Checks if an input is valid
* [meanDS](meanDS.html) Computes statistical mean of vector with more than 4 entries
* [namesDS](namesDS.html) Returns the names of a list
* [productDS](productDS.html) Computes a product
* [quantilemean.ds](quantilemean.ds.html) Generates quantiles and mean information without maximum and minimum
* [rangeDS](rangeDS.html) returns the minimum and maximum of a numeric vector
* [recodelevels.ds](recodelevels.ds.html) recodes a categorical variable
* [rowcolCalc.ds](rowcolCalc.ds.html) Computes sums and means of rows or columns of numeric arrays
* [subclassDS](subclassDS.html) Breaks down a dataframe or a factor into its sub-classes
* [subsetDS](subsetDS.html) Generates a valid subset of a table or a vector
* [table1d.ds](table1d.ds.html) Creates 1-dimensional contingency tables - potentially disclosive data are suppressed
* [table2d.ds](table2d.ds.html) Creates 2-dimensional contingency tables - potentially disclosive data are suppressed
* [varDS](varDS.html) Computes the variance of vector with more than 4 entries

Sources:

* [DESCRIPTION](https://raw.github.com/datashield/dsbase/2.4.4/DESCRIPTION)
* [dsbase 2.4.4](https://github.com/datashield/dsbase/tree/2.4.4)
