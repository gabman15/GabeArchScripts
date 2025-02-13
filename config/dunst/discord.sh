#!/bin/bash
wmctrl -i -r `wmctrl -l | grep -P "Discord" | awk {'print $1'}` -b add,demands_attention
