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
pkg2html <- function(pkg, outdir=tempdir(), pkg.section='\n\n### @pkg@\nPackage functions:\n') {
  pkgRdDB <- tools:::fetchRdDB(file.path(find.package(pkg),'help',pkg))
  topics <- names(pkgRdDB)
  pkg.outdir <- file.path(outdir, pkg)
  unlink(pkg.outdir, recursive=TRUE, force=TRUE)
  dir.create(pkg.outdir, recursive=TRUE)
    
  # markdown index
  pkg.header <- '---
layout: page
title: @pkg@
tagline: @pkg@ Package Documentation
---
'
  # generate html file for each topic
  pkg.func <- ""
  pkgs.func <- ""
  for (p in topics) {
    tmp <- file.path(pkg.outdir, paste(p,'html',sep='.'))
    message('** ds2html of ', pkg, '::', p, ' in ', tmp)
    rd <- pkgRdDB[[p]]
    title <- tools:::.Rd_get_title(rd)
    tools::Rd2HTML(Rd=rd, tmp, package=pkg, stylesheet='../../assets/R.css')
    pkg.func <- paste0(pkg.func,'\n* [', p, '](', p,'.html) ', title)
    pkgs.func <- paste0(pkgs.func,'\n* [', p, '](@pkg@/', p,'.html) ', title)
  }
  
  # version
  pkg.version <- utils::packageDescription(pkg,fields="Version")
  
  pkg.indexfile <- file.path(pkg.outdir, 'index.md')
  message('** index of ', pkg, ' in ', pkg.indexfile)
  section <- gsub('@pkg.func@', pkg.func, pkg.section)
  section <- gsub('@pkg@', pkg, section)
  section <- gsub('@pkg.version@', pkg.version, section)
  cat(gsub('@pkg@', pkg, pkg.header), file=pkg.indexfile, append=FALSE)
  cat(section, file=pkg.indexfile, append=TRUE)
  
  indexfile <- file.path(outdir, 'index.md')
  section <- gsub('@pkg.func@', pkgs.func, pkg.section)
  section <- gsub('@pkg@', pkg, section)
  section <- gsub('@pkg.version@', pkg.version, section)
  cat(section, file=indexfile, append=TRUE)
}

pkgs2html <- function(pkgs, pkg.cmd, out) {
  pkg.section <- '\n\n### @pkg@

Installation command:

@pkg.cmd@

Functions:

@pkg.func@

Sources:

* [DESCRIPTION](https://raw.github.com/datashield/@pkg@/@pkg.version@/DESCRIPTION)
* [@pkg@ @pkg.version@](https://github.com/datashield/@pkg@/tree/@pkg.version@)
'
  
  lapply(pkgs,function(pkg) {
    install.packages(pkg, repos=repos)
    pkg2html(pkg, outdir=out, gsub('@pkg.cmd@', pkg.cmd, pkg.section))
  })
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
cat('\n\n<a name="client"> </a>\n## Client Packages', file=indexfile, append=TRUE)
pkg.cmd <- '\t# Install @pkg@ package (client side)
\tinstall.packages(\'@pkg@\', repos=c(getOption(\'repos\'), \'http://cran.datashield.org\'), dependencies=TRUE)'
pkgs2html(list('dsbaseclient','dsmodellingclient'), pkg.cmd, out)

# Server packages
cat('\n\n<a name="server"> </a>\n## Server Packages', file=indexfile, append=TRUE)
pkg.cmd <- '\t# Install @pkg@ package (server side)
\tlibrary(opaladmin)
\to<-opal.login(...)
\tdsadmin.install_package(o, \'@pkg@\')'
pkgs2html(list('dsbase','dsmodelling'), pkg.cmd, out)
