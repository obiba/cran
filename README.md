# CRAN

[OBiBa](https://www.obiba.org) and [DataSHIELD](http://www.datashield.ac.uk/) R packages repository.

### Quick Start

Client side install:

	# Install all DataSHIELD packages
	install.packages('datashieldclient', repos=c(getOption('repos'), 'https://cran.obiba.org'), dependencies=TRUE)

	# Install DataSHIELD/Opal integration packages
	install.packages('DSOpal', dependencies=TRUE)

Server side install:

	# Login in Opal
	library(opalr)
	o<-opal.login('dsadmin', 'password', 'https://opal.example.org')

	# Install all DataSHIELD packages and dependencies on R server
	dsadmin.install_package(o, 'datashield')

### Packages

[Packages Listing](https://github.com/obiba/cran/tree/gh-pages/src/contrib)

[Packages Documentation](web)
