#!/usr/bin/env bash
#
# Destroy the stack


# use Terraform to deploy the stack
cd terraform
terraform destroy -auto-approve
cd ..
