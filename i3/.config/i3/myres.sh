#!/usr/bin/env bash

xrandr | head -n 1 | sed -r 's/.*current\s([0-9]+)\sx\s([0-9]+).*/\1x\2/g'
