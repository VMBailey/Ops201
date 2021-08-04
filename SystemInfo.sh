#!/bin/bash

# Script Name: System Information
# Author: Vincent Bailey
# Date of Latest Revision: 8/4/2021
# Purpose: This script will display your system's hardware
# information.

echo "Hey again! You're always poking around here, huh? What's the magic word?"

echo "Cool! This is the processor that you're using!"
sudo lshw -class cpu | grep -E 'product:|vendor|physical id|bus info|width'

echo "This is your RAM!"
sudo lshw -class memory | grep -E 'description:|physical id|size'

echo "And now your display adapter. There's quite a bit in here"
sudo lshw -class display | grep -E 'description:|product|vendor|physical id|bus info|width|clock|capabilities|configuration|resources'

echo "Last but not least, here's your network adapter"
sudo lshw -class network | grep -E 'description:|product|vendor|physical id|bus info|logical name|version|serial|size|capacity|width|clock|capabilities|configuration|resources'