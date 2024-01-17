#!/usr/bin/bash
 if [ "x$1" = "xassemble" ]; then
 echo "already assembled"
 exit
 fi
 if [ "x$1" = "xcheck" ]; then
 echo "no check is needed"
 exit 0
 fi
 if [ "x$1" = "xclean" ]; then
 echo "no cleaning is needed"
 exit 0
 fi
if [[ "$2" == "-Dpart="* ]]; then
    set -x
    java $2 -jar bbootimg/bbootimg.jar $1
else
    set -x
    java -jar bbootimg/bbootimg.jar $*
fi
