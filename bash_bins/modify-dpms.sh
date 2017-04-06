#!/bin/bash

# DPMS [https://en.wikipedia.org/wiki/VESA_Display_Power_Management_Signaling]
# (Display Power Management Signaling) enables power saving behaviour of monitors
# when the computer is not in use. For details on each timeout, see
# [http://linux.die.net/man/3/dpmssettimeouts].  Note that some monitors make no
# difference between various DPMS modes.

# Turn off screen immediately
#sleep 1; xset dpms force off

# Disable screen saver blanking
# xset s off

#xset s 3600 3600         #Change blank time to 1 hour
#xset -dpms               #Turn off DPMS
#xset s off -dpms         #Disable DPMS and prevent screen from blanking
#xset dpms force off      #Turn off screen immediately
#xset dpms force standby  #Standby screen
#xset dpms force suspend  #Suspend screen
#xset query
