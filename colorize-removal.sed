#!/bin/sed -f
##
## Removal Coloring ANSI escape
##
## Setup:
##
##   chmod u+x colorize-removal.sed
##
## Usage (Examples):
##
##   tail -f /var/log/httpd/access_log | ./colorize-http-status.sed | colorize-removal.sed
##
s/\x1b\[[01][0-9;]*m//g
