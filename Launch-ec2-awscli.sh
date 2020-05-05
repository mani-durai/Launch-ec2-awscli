#!/bin/bash
#scripts for ec2 instances launch using AWS CLI
#Script by Manidurai
#Email ID:dd.manikandan55@gmail.com
#First of please install and  configured AWS CLI
echo "Ec2 instances provisioned to AWS CLI"
read -p "Enter your image ID : " IMAGEID
read -p "Enter your instance count : " COUNT
read -p "Enter Instance type :" INSTANCE_TYPE
read -p "Enter private/public subnet id :" SUBNET_ID
read -p "Enter existing key-pair name :" KEY_PAIR
read -p "Enter existing security group id :" SECURITY_GROUP
aws ec2 run-instances --image-id $IMAGEID --count $COUNT --instance-type $INSTANCE_TYPE --subnet-id $SUBNET_ID --key-name $KEY_PAIR --security-group-id $SECURITY_GROUP --output text > /tmp/ec2_inst.txt
