#!/bin/sh

if [ -z "$(pidof gammastep)" ]; then
    gammastep -O 3700
else
    kill -9 "$(pidof gammastep)"
fi
