#! /bin/sh
### BEGIN INIT INFO
# Provides:          wii-u-gc-adapter
# Required-Start: plug in Wii U GC adapter
# Required-Stop: unplug Wii U GC adapter
# Default-Start: 2 3 4 5
# Default-Stop: 0 1 6
# Short-Description: Launch Wii U GC adapter driver
# Description: This init script starts the app wii-u-gc-adapter,
#              which allows you to use the Wii U GC adapter for 
#              games.
### END INIT INFO

# Code based on script by user baddger
# https://github.com/ToadKing/wii-u-gc-adapter/issues/12#issuecomment-129611900

# Carry out specific functions when asked to by the system
case "$1" in
  start)
    logger "Starting up wii-u-gc-adapter"
    /usr/bin/wii-u-gc-adapter 2&>/dev/null & 
    ;;
  stop)
    echo "Stopping wii-u-gc-adapter"
    if pgrep -f wii-u-gc-adapter >/dev/null; then
      logger "Killing wii-u-gc-adapter"
      killall wii-u-gc-adapter
    fi
    ;;
  *)
    echo "Usage: /etc/init.d/wii-u-gc-adapter {start|stop}"
    exit 1
    ;;
esac

exit 0
