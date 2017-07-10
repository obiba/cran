#
# Makefile to update CRAN repo and documentation
#

# Versions of github datashield packages
DATASHIELDCLIENT_VERSION=3.0.0
DATASHIELD_VERSION=3.0.0

DSBASECLIENT_VERSION=4.1.0
DSBASE_VERSION=4.0.0

DSMODELLINGCLIENT_VERSION=4.1.0
DSMODELLING_VERSION=4.1.0

DSGRAPHICSCLIENT_VERSION=4.0.0
DSGRAPHICS_VERSION=4.0.0

DSSTATSCLIENT_VERSION=4.1.0
DSSTATS_VERSION=4.0.0

DSBETATESTCLIENT_VERSION=0.0.5
DSBETATEST_VERSION=0.0.5

OPAL_VERSION=2.5.1
OPALADMIN_VERSION=1.18
OPALADDONS_VERSION=1.0.0


help:
	@echo "Available targets: clean cran-src all-packages deploy archive-package..."

cran-src: clean all-packages deploy update-index

clean:
	rm -rf target

all-packages: all-ds-packages opal opaladmin opaladdons

all-ds-packages: dsbase dsmodelling dsgraphics dsstats

datashield:
	$(call package,datashield,$(DATASHIELD_VERSION))
	$(call package,datashieldclient,$(DATASHIELDCLIENT_VERSION))

dsbase:
	$(call package,dsBase,$(DSBASE_VERSION))
	$(call package,dsBaseClient,$(DSBASECLIENT_VERSION))

dsmodelling:
	$(call package,dsModelling,$(DSMODELLING_VERSION))
	$(call package,dsModellingClient,$(DSMODELLINGCLIENT_VERSION))

dsgraphics:
	$(call package,dsGraphics,$(DSGRAPHICS_VERSION))
	$(call package,dsGraphicsClient,$(DSGRAPHICSCLIENT_VERSION))

dsstats:
	$(call package,dsStats,$(DSSTATS_VERSION))
	$(call package,dsStatsClient,$(DSSTATSCLIENT_VERSION))

dsbetatest:
	$(call package,dsBetaTest,$(DSBETATEST_VERSION))
	$(call package,dsBetaTestClient,$(DSBETATESTCLIENT_VERSION))

opal:
	$(call package,opal,$(OPAL_VERSION))

opaladmin:
	$(call package,opaladmin,$(OPALADMIN_VERSION))

opaladdons:
	$(call package,opaladdons,$(OPALADDONS_VERSION))

deploy:
	mkdir -p src/contrib && \
	cp target/src/contrib/*tar.gz src/contrib

update-index:
	cd src/contrib && \
	rm -f PACKAGES* && \
	echo "library(tools) ; write_PACKAGES('.', fields = c('Title',  'Description', 'Author', 'Date', 'URL', 'Licence', 'AggregateMethods', 'AssignMethods'))" | R --vanilla --no-save

package: build-package deploy-package

build-package:
	$(call package,$(p),$(v))

deploy-package:
	cp -n target/src/contrib/$(p)_$(v).tar.gz src/contrib

archive-package:
	mkdir -p src/contrib/Archive/$(p) && \
	cd src/contrib && \
	mv -n $(p)_*tar.gz Archive/$(p)

#
# Build a package in target directory: $1=package_name $2=package_version
#
package = echo "****** Building $1 $2" && \
  mkdir -p target/src/contrib && \
  cd target && \
  rm -f $2.zip && \
  rm -rf $1-$2 && \
  wget https://github.com/datashield/$1/archive/$2.zip && \
  unzip $2.zip && \
  echo "devtools::build('$1-$2','./src/contrib')" | Rscript - && \
  rm -f $2.zip && \
  rm -rf $1-$2

#
# Generate packages documentation in web directory
# 
cran-web:
	git reset -q HEAD web
	git checkout -- web
	git rm -rf web && \
	./bin/ds2html.r && \
	git add web

#
# Install required devtools package
#
install-devtools:
	echo 'install.packages("devtools", repos=c("http://cran.rstudio.com"), dependencies=TRUE)' | R --vanilla --no-save
