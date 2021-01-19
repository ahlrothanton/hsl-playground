#!/usr/bin/env bash
#
# Deploy the stack.


# authenticate to Cloud SDK
#gcloud auth application-default login

# use Terraform to deploy the stack
cd terraform
terraform init -input=false
terraform validate
terraform apply
cd ..
