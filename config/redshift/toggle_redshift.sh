#!/bin/bash

# Check if Redshift is running
if pgrep -x "redshift" > /dev/null; then
    # If Redshift is running, kill it
    pkill redshift
else
    # If Redshift is not running, start it
    redshift -O 3500
fi
