#!/bin/bash
#
#
#trying trap cmd
#
#
set +x #printing the command and it's output

trap 'echo "Script interrupted"; exit' SIGINT

ping 8.8.8.8 
