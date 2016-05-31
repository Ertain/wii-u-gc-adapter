#!/bin/sh
# prerm script for wii-u-gc-adapter
#
# see: dh_installdeb(1)

set -e

case "$1" in
    remove|deconfigure)
    if [ -x /etc/init.d/wii-u-gc-adapter -a $(pidof wii-u-gc-adapter) ]; then
        if [ -x /usr/sbin/invoke-rc.d ]; then
             invoke-rc.d wii-u-gc-adapter stop
        else
             /etc/init.d/wii-u-gc-adapter stop
        fi
    fi
      ;;
    
    upgrade)
      ;;

    failed-upgrade)
      ;;

    *)
        echo "prerm called with unknown argument '$1'" >&2
        exit 1
      ;;
esac

exit 0
