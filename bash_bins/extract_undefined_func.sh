#!/bin/bash

# awk syntax
# ask ' /search pattern1/ {action} 
#       /search pattern2/ {action}' input_file
# 
# 1) ask read input_file line at a time
# 2) match with given pattern in given order, if match perform its 
# corresponding action. If a line matches the pattern, but the action
# is not given, then prints the line.
# 3) eacho statement in actions should be delimited by semicolon.
#

awk '/undefined reference to/ {print $5;}' $1 | sort | uniq

