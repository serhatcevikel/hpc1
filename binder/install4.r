#!/bin/env R
#
options(timeout = 600)

cranlist <- c('sparsio')

## cran packages
for (package in cranlist)
{ 
    if (!require(package, character.only = T, quietly = T))
    {
        install.packages(package)
    }
}

