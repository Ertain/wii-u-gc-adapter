#!/bin/sh
# postrm script for wii-u-gc-adapter
#
# see: dh_installdeb(1)

set -e

case "$1" in
    remove|upgrade|failed-upgrade|abort-install|abort-upgrade|disappear)
    ;;
    
    purge)
        update-rc.d wii-u-gc-adapter remove >/dev/null
    ;;

    *)
        echo "postrm called with unknown argument '$1'" >&2
        exit 1
    ;;
esac

#DEBHELPER#

exit 0
