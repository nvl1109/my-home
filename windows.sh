#!/bin/bash

HOST=$1
AUTH=$2
CMD="C:\\automation\\$3.ps1"

wget -qO- http://$AUTH@$HOST?command=$CMD
