#!/bin/bash


######################
#   Mopidy Startup   #
######################


# Paths.
MOPIDY_DIR=~/mopidy-dev/mopidy
CONF_DIR=~/my-home-automation/mopidy

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

# Scan mode.
if [ "$1" == "scan" ]; then
    python -m mopidy --config $CONF_DIR/core.conf:$CONF_DIR/local.conf local scan
fi

# Local mode.
if [ "$1" == "local" ]; then
    python -m mopidy --config $CONF_DIR/core.conf:$CONF_DIR/local.conf
fi


# Snapcast mode.
if [ "$1" == "snapcast" ]; then
    python -m mopidy --config $CONF_DIR/core.conf:$CONF_DIR/local.conf:$CONF_DIR/snapcast.conf
fi
