#!/usr/bin/env Rscript

# Output directory of html documentation
if (is.na(commandArgs(TRUE)[1])) {
  out = 'web'
} else {
  out = commandArgs(TRUE)[1] 
}
dir.create(out, recursive=TRUE)

# Repos for latest version install
repos <- c('http://cran.obiba.org','http://cran.rstudio.com')

# Convert Rd package files to html
ds2html <- function(pkg, outdir=tempdir(), pkg.section='\n\n### @pkg@\nPackage functions:\n') {
  pkgRdDB <- tools:::fetchRdDB(file.path(find.package(pkg),'help',pkg))
  topics <- names(pkgRdDB)
  pkg.outdir <- file.path(outdir, pkg)
  unlink(pkg.outdir, recursive=TRUE, force=TRUE)
  dir.create(pkg.outdir, recursive=TRUE)
  
  # Copy DESCRIPTION file
  description <- file.path(find.package(pkg),'DESCRIPTION')
  file.copy(description,pkg.outdir,overwrite=TRUE)
  
  # markdown index
  pkg.header <- '---
layout: page
title: @pkg@
tagline: @pkg@ Package Documentation
---
'
  pkg.indexfile <- file.path(pkg.outdir, 'index.md')
  message('** index of ', pkg, ' in ', pkg.indexfile)
  cat(gsub('@pkg@', pkg, pkg.header), file=pkg.indexfile, append=FALSE)
  cat(gsub('@pkg@', pkg, pkg.section), file=pkg.indexfile, append=TRUE)
  
  indexfile <- file.path(outdir, 'index.md')
  cat(gsub('@pkg@', pkg, pkg.section), file=indexfile, append=TRUE)
  
  # html file for each topic
  for (p in topics) {
    tmp <- file.path(pkg.outdir, paste(p,'html',sep='.'))
    message('** ds2html of ', pkg, '::', p, ' in ', tmp)
    rd <- pkgRdDB[[p]]
    title <- tools:::.Rd_get_title(rd)
    tools::Rd2HTML(Rd=rd, tmp, package=pkg, stylesheet='/assets/R.css')
    cat(paste0('\n* [', p, '](', p,'.html) ', title), file=pkg.indexfile, append=TRUE)
    cat(paste0('\n* [', p, '](', pkg, '/', p,'.html) ', title), file=indexfile, append=TRUE)
  }
  
}

# Main index file
indexfile <- file.path(out, 'index.md')
cat('---
layout: page
title: Packages Documentation
tagline: DataSHIELD Packages Documentation
---

## Overview

* [Client Packages](#client)
* [Server Packages](#server)

', file=indexfile, append=FALSE)

# Client packages
pkg.section <- '\n\n### @pkg@

Installation command:

\t# Install @pkg@ package (client side)
\tinstall.packages(\'@pkg@\', repos=c(getOption(\'repos\'), \'http://datashield.github.io/cran\'), dependencies=TRUE)

Description:

[DESCRIPTION](@pkg@/DESCRIPTION)

Functions:
'
cat('\n\n<a name="client"> </a>\n## Client Packages', file=indexfile, append=TRUE)
pkgs = list('dsbaseclient','dsmodellingclient','dsteststatsclient')
lapply(pkgs,function(pkg) {
  install.packages(pkg, repos=repos)
  ds2html(pkg, outdir=out, pkg.section)
})

# Server packages
pkg.section <- '\n\n### @pkg@

Installation command:

\t# Install @pkg@ package (server side)
\tlibrary(opaladmin)
\to<-opal.login(...)
\tdsadmin.install_package(o, \'@pkg@\')

Description:

[DESCRIPTION](@pkg@/DESCRIPTION)

Functions:
'

cat('\n\n<a name="server"> </a>\n## Server Packages', file=indexfile, append=TRUE)
pkgs = list('dsbase','dsmodelling','dsteststats')
lapply(pkgs,function(pkg) {
  install.packages(pkg, repos=repos)
  ds2html(pkg, outdir=out, pkg.section)
})
