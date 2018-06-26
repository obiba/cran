# CRAN

ObiBa and DataSHIELD R packages repository.

### Quick Start

Client side install:

	# Install all DataSHIELD packages
	install.packages('datashieldclient', repos=c(getOption('repos'), 'http://cran.obiba.org'), dependencies=TRUE)

Server side install:

	# Install opaladmin package
	install.packages('opaladmin', repos=c(getOption('repos'), 'http://cran.obiba.org'), dependencies=TRUE)

	# Login in Opal
	library(opaladmin)
	o<-opal.login('dsadmin', 'password', 'https://some-opal-host:8443')

	# Install all DataSHIELD packages and dependencies on R server
	dsadmin.install_package(o, 'datashield')

### Packages

[Packages Listing](https://github.com/obiba/cran/tree/gh-pages/src/contrib)

[Packages Documentation](web)
