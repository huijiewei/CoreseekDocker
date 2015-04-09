#!/bin/bash

/usr/local/coreseek/bin/searchd -c /etc/coreseek/sphinx.conf --nodetach "$@"
