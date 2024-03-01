#!/bin/bash
#
#
#Author: Deepak
#Expected Outpur: System Health
#Version: v1
#
#
set -x 

df -h #disk space

free -m #free memory

nproc #no of cpus in the system

ps -aux | grep 'python'| awk '{print $2}' #fetching only process id of the python with awk cmd
