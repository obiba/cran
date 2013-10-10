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


* [checkfactor.ds](checkfactor.ds.html) Verifies that a factor vector is valid
* [createfactor.ds](createfactor.ds.html) Generates a factor variable
* [densitygrid.ds](densitygrid.ds.html) Generates a density grid with or without a priori defined limits
* [histogram.ds](histogram.ds.html) Computes a histogram of the given data values without plotting.
* [isNA.ds](isNA.ds.html) Checks if a vector is empty
* [isValid.ds](isValid.ds.html) Checks if an input is valid
* [mean.ds](mean.ds.html) Calculates statistical mean of vector with more than 4 entries
* [product.ds](product.ds.html) Computes a product
* [quantilemean.ds](quantilemean.ds.html) Generates quantiles and mean information without maximum and minimum
* [range.ds](range.ds.html) returns the minimum and maximum of a numeric vector
* [table1d.ds](table1d.ds.html) Creates 1-dimensional contingency tables - potentially disclosive data are suppressed
* [table2d.ds](table2d.ds.html) Creates 2-dimensional contingency tables - potentially disclosive data are suppressed

Sources:

* [DESCRIPTION](https://raw.github.com/datashield/dsbase/2.0/DESCRIPTION)
* [dsbase 2.0](https://github.com/datashield/dsbase/tree/2.0)
