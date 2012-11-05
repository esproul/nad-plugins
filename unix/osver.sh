#!/bin/sh
#
# Uses uname to export the tuple of OS name, release and version.

TUPLE=$(/usr/bin/uname -srv)
echo "osver s $TUPLE"
