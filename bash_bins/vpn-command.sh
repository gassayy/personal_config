#!/bin/bash


pptpsetup
nmcli con
nmcli con down id yunti-vpn
nmcli con up id yunti-vpn
