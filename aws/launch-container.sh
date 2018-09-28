#!/bin/bash

set -e -x

aws ec2 run-instances \
--image-id ami-03651d073314feb69 \
--count 1 \
--instance-type t2.medium \
--key-name my-ubuntu-keypair \
--security-group-ids sg-0514c8c6bc2536f7a \
--subnet-id subnet-4ad2582f \
--associate-public-ip-address \
--user-data file://bootstrap.txt
