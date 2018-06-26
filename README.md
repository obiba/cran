# CRAN

[OBiBa](https://www.obiba.org) and [DataSHIELD](https://www.datashield.ac.uk/) R packages repository.

### Quick Start

Client side install:

	# Install all DataSHIELD packages
	install.packages('datashieldclient', repos=c(getOption('repos'), 'https://cran.obiba.org'), dependencies=TRUE)

Server side install:

	# Install opaladmin package
	install.packages('opaladmin', repos=c(getOption('repos'), 'https://cran.obiba.org'), dependencies=TRUE)

	# Login in Opal
	library(opaladmin)
	o<-opal.login('dsadmin', 'password', 'https://opal.example.org')

	# Install all DataSHIELD packages and dependencies on R server
	dsadmin.install_package(o, 'datashield')

### Packages

[Packages Listing](https://github.com/obiba/cran/tree/gh-pages/src/contrib)

[Packages Documentation](web)
