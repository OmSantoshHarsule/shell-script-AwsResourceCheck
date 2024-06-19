#!/bin/bash
##########################
#Author: Om Harsule
#Date: 19th June
#Version:1
#This script give the information regarding the AWS resource like EC2 instance, IAM user, S3 Buckets, Lambda Function
##########################
set -x

date >> Resource

echo "List of EC2 instance" >> Resource
aws ec2 describe-instance | jq '.Reservations[].Instances[].InstanceId' >> Resource

echo " List of IAM user " >> Resource
aws iam list-users >> Resource

echo " List of S3 buckets " >> Resource
aws s3 ls >> Resource

echo " List of Lambda Function " >> Resource
aws lambda list-functions | jq '.Functions[].FunctionName' >> Resource
aws lambda list-functions | jq '.Functions[].FunctionArn' >> Resource

