#!/bin/bash
##########################
#Author: Om Harsule
#Date: 19th June
#Version:1
#This script give the information regarding the AWS Resource like EC2 instance, IAM user, S3 Buckets, Lambda Function
##########################
set -x

date >> ./shell_script/AWS.txt

echo "List of EC2 instance" >> ./shell_script/AWS.txt
aws ec2 describe-instance | jq '.Reservations[].Instances[].InstanceId' >> ./shell_script/AWS.txt

echo " List of IAM user " >> ./shell_script/AWS.txt
aws iam list-users >> ./shell_script/AWS.txt

echo " List of S3 buckets " >> ./shell_script/AWS.txt
aws s3 ls >> ./shell_script/AWS.txt

echo " List of Lambda Function " >> ./shell_script/AWS.txt
aws lambda list-functions | jq '.Functions[].FunctionName' >> ./shell_script/AWS.txt
aws lambda list-functions | jq '.Functions[].FunctionArn' >> ./shell_script/AWS.txt

echo " List of S3 buckets " >> ./shell_script/AWS.txt
aws s3 ls >> ./shell_script/AWS.txt

