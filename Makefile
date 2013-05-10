#
# Makefile to update CRAN repo and documentation
#

base_dir=/tmp
cran_repo=cran.datashield.org

# Update CRAN repo and documentation, will fail if CRAN repo has not changed
all: clone cran-src cran-web push

clean:
	rm -rf ${base_dir}/${cran_repo}

# Clone DataSHIELD's CRAN
clone:
	cd ${base_dir} && \
	rm -rf ${cran_repo} && \
	git clone https://github.com/datashield/cran.git ${cran_repo} && \
	cd ${cran_repo} && \
	git checkout gh-pages

# Mirror OBiBa's CRAN, will fail if nothing has changed
cran-src:
	cd ${base_dir} && \
	rm -rf cran.obiba.org && \
	wget -R *html -np -m http://cran.obiba.org/src/contrib/ && \
	cd ${cran_repo} && \
	git rm -rf src && \
	mv ../cran.obiba.org/src . && \
	rm -rf ../cran.obiba.org && \
	git add src && \
	git status && \
	git commit -m "mirror from cran.obiba.org"

# Generate packages documentation in web directory
cran-web:
	cd ${base_dir}/${cran_repo} && \
	git rm -rf web && \
	./bin/ds2html.r && \
	git add web && \
	git status && \
	git commit -m "documentation update"

# Push to GitHub
push:
	cd ${base_dir}/${cran_repo} && \
	git push origin gh-pages
