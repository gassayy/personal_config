#!/bin/bash

sudo ifconfig eth0 down
sudo ifconfig eth0 hw ether $1 #[cloned_mac_address]
sudo ifconfig eth0 up

sudo dhclient -r eth0
sudo dhclient  eth0
