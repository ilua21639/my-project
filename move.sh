#!/bin/bash

echo "Enter Bastion IP"
read bastion_ip
scp -i .ssh/id ./.ssh/id ilua1@$bastion_ip:/home/ilua1/.ssh/
scp -i .ssh/id -r ./ansible/ ilua1@$bastion_ip:/home/ilua1/
ssh -i .ssh/id ilua1@$bastion_ip

