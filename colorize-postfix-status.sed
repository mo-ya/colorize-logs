#!/bin/sed -f
##
## Coloring STATUS of POSTFIX LOG
##
## Note: for DARK Background 
##
## Setup:
##
##   chmod u+x colorize-postfix-status.sed
##
## Usage (Examples):
##
##   tail -f /var/log/maillog | ./colorize-postfix-status.sed
##
##   cat /var/log/maillog | ./colorize-postfix-status.sed | less -R
##
## Original: http://d.hatena.ne.jp/y-kawaz/20110713/1310532417
## 
## Other References: http://kokukuma.blogspot.jp/2011/12/tail.html
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
s/\(status=sent\)/\x1b[1;36;44m\1\x1b[0m/
s/\(status=deferred\)/\x1b[1;37;42m\1\x1b[0m/
s/\(status=bounced\)/\x1b[1;30;43m\1\x1b[0m/

