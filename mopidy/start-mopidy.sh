#!/bin/bash


######################
#   Mopidy Startup   #
######################


# Paths.
MOPIDY_DIR=~/dev/mopidy-dev/mopidy
CONF_DIR=~/mopidy

# Check input.
if [ -z "$1" ]; then
    echo "Specify mode: [room, local, snapcast]"
    exit
fi

cd $DIR

# Room mode.
if [ "$1" == "room" ]; then
    python -m mopidy --config $CONF_DIR/core.conf
fi

# Local mode.
if [ "$1" == "local" ]; then
    python -m mopidy --config $CONF_DIR/core.conf:$CONF_DIR/local.conf
fi

# Snapcast mode.
if [ "$1" == "snapcast" ]; then
    python -m mopidy --config $CONF_DIR/core.conf:$CONF_DIR/local.conf:$CONF_DIR/snapcast.conf
fi
