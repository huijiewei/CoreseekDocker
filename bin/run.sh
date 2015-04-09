#!/bin/bash

/usr/local/coreseek/bin/indexer -c etc/coreseek/sphinx.conf --all
./searchd.sh
