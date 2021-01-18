#!/usr/bin/env bash
#
# Deploy the stack.


# use Terraform to deploy the stack
cd terraform
terraform init -input=false
terraform validate
terraform apply
cd ..
