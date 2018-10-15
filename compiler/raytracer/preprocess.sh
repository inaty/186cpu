#!/bin/sh
# execは「分身しない」程度で特に意味はない？
# \(と\)で包括らしい
# ^(*NOMINCAML(任意)*)$→任意
# ^(*MINCAML*)(任意)$→無
exec sed -e 's/^(\*NOMINCAML \(.*\)\*)$/\1/' -e 's/^(\*MINCAML\*)\(.*\)$//' "$@"
