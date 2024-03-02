#!/bin/bash

#Author: Savatar
#Date: 2/3/24
#Version: v1

set -x #debug mode
set -e #exit when script fails
set -o pipefail

echo 'printing aws instances with their instance id'
aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId'

echo 'listing s3 buckets'
aws s3 ls

echo 'printing aws lambda functions'
aws lambda list-functions

echo 'listing aws Iam users'
aws iam list-users
