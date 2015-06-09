#!/bin/sed -f
##
## Coloring STATUS of Apache LOG
##
## Note: for DARK Background 
##
## Setup:
##
##   chmod u+x colorize-http-status.sed
##
## Usage (Examples):
##
##   tail -f /var/log/httpd/access_log | ./colorize-http-status.sed
##
##   cat /var/log/httpd/access_log | ./colorize-http-status.sed | less -R
##
## References: http://d.hatena.ne.jp/y-kawaz/20110713/1310532417
##             http://kokukuma.blogspot.jp/2011/12/tail.html
##
# 0  reset
# 1  bold
# 3  italic
# 4  underline
# 5  blink
# 30 black
# 31 red
# 32 green
# 33 yellow
# 34 blue
# 35 magenta
# 36 cyan
# 37 white
# 40 black   (bg)
# 41 red     (bg)
# 42 green   (bg)
# 43 yellow  (bg)
# 44 blue    (bg)
# 45 magenta (bg)
# 46 cyan    (bg)
# 47 white   (bg)
s/\(HTTP\/1..\"\) \(2[0-9][0-9]\) /\1 \x1b[1;36;44m\2\x1b[0m /
s/\(HTTP\/1..\"\) \(3[0-9][0-9]\) /\1 \x1b[1;37;42m\2\x1b[0m /
s/\(HTTP\/1..\"\) \(4[0-9][0-9]\) /\1 \x1b[1;33;41m\2\x1b[0m /
s/\(HTTP\/1..\"\) \(5[0-9][0-9]\) /\1 \x1b[1;30;43m\2\x1b[0m /
