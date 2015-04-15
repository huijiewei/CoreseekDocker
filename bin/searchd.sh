#!/bin/bash

/usr/local/coreseek/bin/searchd -c /opt/coreseek/sphinx.conf --nodetach "$@"
