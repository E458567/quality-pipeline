#!/bin/bash

set -e -x

public_ip=""

while [ -z "$public_ip" ]; do
    public_ip="$(aws ec2 describe-instances --query 'Reservations[*].Instances[*].[PublicIpAddress]' --filters 'Name=instance-state-name,Values=running' --output text)"
    echo "Retry again in next 5 seconds until AWS EC2 (Docker host) is up running ..."
    sleep 5
done
    
echo "$public_ip"

url="http://$public_ip:8090"
until curl -m 5 "$url"; do
    echo "Retry again in next 5 seconds until Docker container is serving sample app on port 8090 ..."
done

echo "Docker container for sample app is fully up running. It's ready to fire some Selenium tests."
