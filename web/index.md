---
layout: page
title: Packages Documentation
tagline: DataSHIELD Packages Documentation
---

## Overview

* [Client Packages](#client-packages)
* [Server Packages](#server-packages)



## Client Packages

### dsbaseclient

Installation command:

	# Install dsbaseclient package (client side)
	install.packages('dsbaseclient', repos=c(getOption('repos'), 'http://cran.datashield.org'), dependencies=TRUE)

Functions:


* [ds.NROW](dsbaseclient/ds.NROW.html) Returns the number of rows present in x
* [ds.append2df](dsbaseclient/ds.append2df.html) Appends a vector/column to a dataframe
* [ds.asCharacter](dsbaseclient/ds.asCharacter.html) Turns a vector into character type
* [ds.asList](dsbaseclient/ds.asList.html) Constructs an object of type list
* [ds.asMatrix](dsbaseclient/ds.asMatrix.html) Attempts to turn its argument into a matrix
* [ds.asNull](dsbaseclient/ds.asNull.html) Ignores its argument and returns the value 'NULL'.
* [ds.asNumeric](dsbaseclient/ds.asNumeric.html) Turns a vector into numerical type
* [ds.assign](dsbaseclient/ds.assign.html) Assigns an object to a name in the server side
* [ds.c](dsbaseclient/ds.c.html) Combines values into a vector or list
* [ds.cbind](dsbaseclient/ds.cbind.html) Combines objects by columns
* [ds.changerefgroup](dsbaseclient/ds.changerefgroup.html) changes a reference level of a factor
* [ds.checkvar](dsbaseclient/ds.checkvar.html) Checks if all variables do exist and are not empty
* [ds.class](dsbaseclient/ds.class.html) Retrieves the class of an object
* [ds.colnames](dsbaseclient/ds.colnames.html) Retrieves column names of a matrix-like object
* [ds.complete.cases](dsbaseclient/ds.complete.cases.html) Returns a logical vector indicating which cases are complete, i.e., have no missing values.
* [ds.contourplot](dsbaseclient/ds.contourplot.html) Creates a contour plot
* [ds.createfactor](dsbaseclient/ds.createfactor.html) Ensures factors have same classes across studies
* [ds.data.frame](dsbaseclient/ds.data.frame.html) Creates data frames
* [ds.densitygrid](dsbaseclient/ds.densitygrid.html) Generates a density grid with or without a priori defined limits
* [ds.dim](dsbaseclient/ds.dim.html) Retrieves the dimension of an object
* [ds.exists](dsbaseclient/ds.exists.html) Checks if an object is defined on the server side
* [ds.exp](dsbaseclient/ds.exp.html) Computes the exponential function
* [ds.fac2num](dsbaseclient/ds.fac2num.html) Turns a factor into numerical type
* [ds.heatmapplot](dsbaseclient/ds.heatmapplot.html) Generates a heatmap plot for merged datasets
* [ds.histogram](dsbaseclient/ds.histogram.html) Plots a histogram
* [ds.inform](dsbaseclient/ds.inform.html) Tells user if an object is defined on the server side.
* [ds.is.character](dsbaseclient/ds.is.character.html) a test of an object being of type 'character'
* [ds.is.factor](dsbaseclient/ds.is.factor.html) a test of an object being of type "factor"
* [ds.is.null](dsbaseclient/ds.is.null.html) tests whether an object is NULL
* [ds.is.numeric](dsbaseclient/ds.is.numeric.html) a test of an object being interpretable as numbers
* [ds.isNA](dsbaseclient/ds.isNA.html) Checks if a vector is empty
* [ds.isPresent](dsbaseclient/ds.isPresent.html) Checks if a vector is in a table assigned to R
* [ds.isValid](dsbaseclient/ds.isValid.html) Checks if an variable is valid
* [ds.length](dsbaseclient/ds.length.html) Gets the length of a vector
* [ds.levels](dsbaseclient/ds.levels.html) Provides access to the levels attribute of a factor variable
* [ds.list](dsbaseclient/ds.list.html) Function to construct a list object
* [ds.log](dsbaseclient/ds.log.html) Computes logarithms, by default natural logarithms
* [ds.makeBinary](dsbaseclient/ds.makeBinary.html) Generates a valid binary variable from a continuous variable
* [ds.mean](dsbaseclient/ds.mean.html) Computes the statistical mean of a given vector (for several studies separately or combined)
* [ds.meanByClass](dsbaseclient/ds.meanByClass.html) Computes the mean and standard deviation across categories
* [ds.names](dsbaseclient/ds.names.html) Gets the names of items in a list
* [ds.product](dsbaseclient/ds.product.html) Computes a product
* [ds.quantilemean](dsbaseclient/ds.quantilemean.html) Plots a histogram
* [ds.range](dsbaseclient/ds.range.html) Gets the range of a vector
* [ds.recodelevels](dsbaseclient/ds.recodelevels.html) recodes a categorical variable
* [ds.rowcolCalc](dsbaseclient/ds.rowcolCalc.html) Computes sums and means of rows or columns of numeric arrays
* [ds.subclass](dsbaseclient/ds.subclass.html) Generates valid subset(s) of a dataframe or a factor
* [ds.subset](dsbaseclient/ds.subset.html) Generates a valid subset of a table or a vector
* [ds.sum](dsbaseclient/ds.sum.html) Returns the sum of all the values present in its arguments
* [ds.summary](dsbaseclient/ds.summary.html) Generates the summary of a numeric or factor vector
* [ds.t.test](dsbaseclient/ds.t.test.html) Runs a student's t-test on horizontally partitioned data
* [ds.table1d](dsbaseclient/ds.table1d.html) Creates 1-dimensional contingency tables - potentially disclosive data are suppressed
* [ds.table2d](dsbaseclient/ds.table2d.html) Creates 2-dimensional contingency tables - potentially disclosive data are suppressed
* [ds.var](dsbaseclient/ds.var.html) Computes the variance of a given vector (for several studies separately or combined)
* [table1dhelper1](dsbaseclient/table1dhelper1.html) Checks validity of tabulated factor variable
* [table1dhelper2](dsbaseclient/table1dhelper2.html) Combines output of server side function 'table1d.ds'
* [table1dhelper3](dsbaseclient/table1dhelper3.html) Generates percents from counts returned by the function 'table1d.ds'
* [table1dhelper4](dsbaseclient/table1dhelper4.html) Finalizes the output of the function 'table1d.ds'
* [table2dhelper1](dsbaseclient/table2dhelper1.html) Checks validity of 2D-tables
* [table2dhelper2](dsbaseclient/table2dhelper2.html) Generates a valid array
* [table2dhelper3](dsbaseclient/table2dhelper3.html) Generates percents from counts returned by the function 'table2d.ds'
* [table2dhelper4](dsbaseclient/table2dhelper4.html) Finalizes the output of the function 'table2d.ds'

Sources:

* [DESCRIPTION](https://raw.github.com/datashield/dsbaseclient/2.4.1/DESCRIPTION)
* [dsbaseclient 2.4.1](https://github.com/datashield/dsbaseclient/tree/2.4.1)


### dsmodellingclient

Installation command:

	# Install dsmodellingclient package (client side)
	install.packages('dsmodellingclient', repos=c(getOption('repos'), 'http://cran.datashield.org'), dependencies=TRUE)

Functions:


* [ds.glm](dsmodellingclient/ds.glm.html) Runs a combined GLM analysis of non-pooled data
* [glmhelper1](dsmodellingclient/glmhelper1.html) Extracts the elements of an expression of type call
* [glmhelper2](dsmodellingclient/glmhelper2.html) Extracts object variables from a regression formula

Sources:

* [DESCRIPTION](https://raw.github.com/datashield/dsmodellingclient/2.2.0/DESCRIPTION)
* [dsmodellingclient 2.2.0](https://github.com/datashield/dsmodellingclient/tree/2.2.0)


### opal

Installation command:

	# Install opal package (client side)
	install.packages('opal', repos=c(getOption('repos'), 'http://cran.datashield.org'), dependencies=TRUE)

Functions:


* [datashield.aggregate](opal/datashield.aggregate.html) Data aggregation
* [datashield.assign](opal/datashield.assign.html) Data assignment
* [datashield.command](opal/datashield.command.html) Get an asynchronous command
* [datashield.command_result](opal/datashield.command_result.html) Get result of an asynchronous command
* [datashield.command_rm](opal/datashield.command_rm.html) Remove an asynchronous command
* [datashield.commands](opal/datashield.commands.html) List the asynchronous commands
* [datashield.commands_rm](opal/datashield.commands_rm.html) Remove all asynchronous commands
* [datashield.has_method](opal/datashield.has_method.html) Check existence of a Datashield method by its name
* [datashield.login](opal/datashield.login.html) Logs in and assigns variables to R
* [datashield.logout](opal/datashield.logout.html) Logout from Opal(s)
* [datashield.method](opal/datashield.method.html) Get Datashield method by its name
* [datashield.methods](opal/datashield.methods.html) List Datashield methods
* [datashield.newSession](opal/datashield.newSession.html) New Datashield session
* [datashield.rm](opal/datashield.rm.html) Remove a R symbol
* [datashield.rmSessions](opal/datashield.rmSessions.html) Remove Datashield sessions
* [datashield.setSession](opal/datashield.setSession.html) Set Datashield session
* [datashield.symbols](opal/datashield.symbols.html) List R symbols
* [logindata](opal/logindata.html) Information required to login to opal servers
* [opal](opal/opal.html) Opal Client for R
* [opal.assign](opal/opal.assign.html) Data assignment
* [opal.attribute_values](opal/opal.attribute_values.html) Get a vector of values (for each locale) matching the given attribute namespace and name. Vector is null if no such attribute is found.
* [opal.command](opal/opal.command.html) Get an asynchronous command
* [opal.command_result](opal/opal.command_result.html) Get result of an asynchronous command
* [opal.command_rm](opal/opal.command_rm.html) Remove an asynchronous command
* [opal.commands](opal/opal.commands.html) List the asynchronous commands
* [opal.commands_rm](opal/opal.commands_rm.html) Remove all asynchronous commands
* [opal.datasource](opal/opal.datasource.html) Get a datasource from a opal.
* [opal.datasources](opal/opal.datasources.html) Get datasources from a opal.
* [opal.execute](opal/opal.execute.html) Execute a R script
* [opal.getSessions](opal/opal.getSessions.html) Get R sessions
* [opal.login](opal/opal.login.html) Opal login
* [opal.logout](opal/opal.logout.html) Logout from Opal(s)
* [opal.newSession](opal/opal.newSession.html) New R session
* [opal.report](opal/opal.report.html) Opal report
* [opal.report_md](opal/opal.report_md.html) Turn a R markdown file to html.
* [opal.rm](opal/opal.rm.html) Remove a R symbol (deprecated)
* [opal.rmSession](opal/opal.rmSession.html) Remove R session
* [opal.rmSessions](opal/opal.rmSessions.html) Remove all R sessions
* [opal.rm_command](opal/opal.rm_command.html) Remove an asynchronous command
* [opal.rm_commands](opal/opal.rm_commands.html) Remove all asynchronous commands
* [opal.setSession](opal/opal.setSession.html) Set R session
* [opal.symbol_rm](opal/opal.symbol_rm.html) Remove a R symbol
* [opal.symbols](opal/opal.symbols.html) List R symbols
* [opal.table](opal/opal.table.html) Get a table of a datasource from a opal.
* [opal.tables](opal/opal.tables.html) Get tables of a datasource from a opal.
* [opal.variable](opal/opal.variable.html) Get a variable of a table from a opal.
* [opal.variables](opal/opal.variables.html) Get variables of a table from a opal.
* [opal.version_compare](opal/opal.version_compare.html) Compare

Sources:

* [DESCRIPTION](https://raw.github.com/datashield/opal/2.1.3/DESCRIPTION)
* [opal 2.1.3](https://github.com/datashield/opal/tree/2.1.3)


### opaladmin

Installation command:

	# Install opaladmin package (client side)
	install.packages('opaladmin', repos=c(getOption('repos'), 'http://cran.datashield.org'), dependencies=TRUE)

Functions:


* [dsadmin.get_method](opaladmin/dsadmin.get_method.html) Get Datashield Method
* [dsadmin.get_methods](opaladmin/dsadmin.get_methods.html) Get Datashield Methods
* [dsadmin.install_package](opaladmin/dsadmin.install_package.html) Install Datashield Package
* [dsadmin.installed_package](opaladmin/dsadmin.installed_package.html) Check if a Datashield package is installed in Opal(s).
* [dsadmin.package_description](opaladmin/dsadmin.package_description.html) Get Datashield Package Description
* [dsadmin.package_descriptions](opaladmin/dsadmin.package_descriptions.html) Get Datashield Package Descriptions
* [dsadmin.remove_package](opaladmin/dsadmin.remove_package.html) Remove Datashield Package
* [dsadmin.rm_method](opaladmin/dsadmin.rm_method.html) Remove Datashield Method
* [dsadmin.rm_methods](opaladmin/dsadmin.rm_methods.html) Remove Datashield Methods
* [dsadmin.rm_package_methods](opaladmin/dsadmin.rm_package_methods.html) Remove Package Datashield Methods
* [dsadmin.set_method](opaladmin/dsadmin.set_method.html) Set Datashield Method
* [dsadmin.set_package_methods](opaladmin/dsadmin.set_package_methods.html) Set Package Datashield Methods
* [oadmin.install_devtools](opaladmin/oadmin.install_devtools.html) Install devtools package if not already available.
* [oadmin.install_github](opaladmin/oadmin.install_github.html) Install a package from a source repository on GitHub. Makes sure devtools package is available.
* [oadmin.install_package](opaladmin/oadmin.install_package.html) Install Package
* [oadmin.installed_devtools](opaladmin/oadmin.installed_devtools.html) Check if devtools package is installed.
* [oadmin.installed_package](opaladmin/oadmin.installed_package.html) Check if a package is installed in Opal(s).
* [oadmin.package_description](opaladmin/oadmin.package_description.html) Get Package Descriptions
* [oadmin.remove_package](opaladmin/oadmin.remove_package.html) Remove Package
* [opal.load_package](opaladmin/opal.load_package.html) Load package in the current session.
* [opal.unload_package](opaladmin/opal.unload_package.html) Unload package from the current session.
* [opaladmin](opaladmin/opaladmin.html) Opal R and Datashield Administration tools

Sources:

* [DESCRIPTION](https://raw.github.com/datashield/opaladmin/1.17/DESCRIPTION)
* [opaladmin 1.17](https://github.com/datashield/opaladmin/tree/1.17)


## Server Packages

### dsbase

Installation command:

	# Install dsbase package (server side)
	library(opaladmin)
	o<-opal.login(...)
	dsadmin.install_package(o, 'dsbase')

Functions:


* [append2df.ds](dsbase/append2df.ds.html) Appends a column(s) to a dataframe
* [changerefgroup.ds](dsbase/changerefgroup.ds.html) changes a reference level of a factor
* [checkfactor.ds](dsbase/checkfactor.ds.html) Verifies that a factor vector is valid
* [createfactor.ds](dsbase/createfactor.ds.html) Generates a factor variable
* [densitygrid.ds](dsbase/densitygrid.ds.html) Generates a density grid with or without a priori defined limits
* [dimDS](dsbase/dimDS.html) Returns the dimensions of a table structure
* [histogram.ds](dsbase/histogram.ds.html) Computes a histogram of the given data values without plotting.
* [isNA.ds](dsbase/isNA.ds.html) Checks if a vector is empty
* [isValid.ds](dsbase/isValid.ds.html) Checks if an input is valid
* [meanDS](dsbase/meanDS.html) Computes statistical mean of vector with more than 4 entries
* [namesDS](dsbase/namesDS.html) Returns the names of a list
* [productDS](dsbase/productDS.html) Computes a product
* [quantilemean.ds](dsbase/quantilemean.ds.html) Generates quantiles and mean information without maximum and minimum
* [rangeDS](dsbase/rangeDS.html) returns the minimum and maximum of a numeric vector
* [recodelevels.ds](dsbase/recodelevels.ds.html) recodes a categorical variable
* [rowcolCalc.ds](dsbase/rowcolCalc.ds.html) Computes sums and means of rows or columns of numeric arrays
* [subclassDS](dsbase/subclassDS.html) Breaks down a dataframe or a factor into its sub-classes
* [subsetDS](dsbase/subsetDS.html) Generates a valid subset of a table or a vector
* [subsetvar.ds](dsbase/subsetvar.ds.html) Derives a valid binary variable from a continuous variable
* [table1d.ds](dsbase/table1d.ds.html) Creates 1-dimensional contingency tables - potentially disclosive data are suppressed
* [table2d.ds](dsbase/table2d.ds.html) Creates 2-dimensional contingency tables - potentially disclosive data are suppressed
* [varDS](dsbase/varDS.html) Computes the variance of vector with more than 4 entries

Sources:

* [DESCRIPTION](https://raw.github.com/datashield/dsbase/2.4.1/DESCRIPTION)
* [dsbase 2.4.1](https://github.com/datashield/dsbase/tree/2.4.1)


### dsmodelling

Installation command:

	# Install dsmodelling package (server side)
	library(opaladmin)
	o<-opal.login(...)
	dsadmin.install_package(o, 'dsmodelling')

Functions:


* [glm.ds](dsmodelling/glm.ds.html) Fits a generalized linear model

Sources:

* [DESCRIPTION](https://raw.github.com/datashield/dsmodelling/2.1/DESCRIPTION)
* [dsmodelling 2.1](https://github.com/datashield/dsmodelling/tree/2.1)
