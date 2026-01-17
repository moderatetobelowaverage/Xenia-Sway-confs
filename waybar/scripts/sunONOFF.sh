#!/bin/bash

if pgrep -x "wlsunset" >/dev/null; then
  pkill wlsunset >/dev/null 2>&1
else
  wlsunset -S 11:00 -s 12:00 >/dev/null 2>&1 &
fi
