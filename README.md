# HSL Open Data Playground

Simple application to read and visualize HSL Open Data.

The application is written in [Vue](https://vuejs.org) with [Nuxt](https://nuxtjs.org).

So the stack is basically a JAMstack, that is deployed to Google Cloud Run with Terraform.

## Stack

  - Vue/Nuxt/node
  - Docker
  - Terraform
  - GCP
    - Goocle Container Registry
    - Google Cloud Run

## Dependencies

- [Google Account](https://accounts.google.com)
- [Billing Account Configured for GCP](https://cloud.google.com/billing/docs/how-to/manage-billing-account)
- [google-cloud-sdk](https://cloud.google.com/sdk/docs/quickstart)
- [Terraform](https://www.terraform.io/downloads.html)
- [Docker](https://www.docker.com/get-started)

## Usage

    echo "billing_account = 'BILLING_ACCOUNT_ID'" > terraform/terraform.tfvars

Set your GCP billing account id into Terraform variable file.

     gcloud auth application-default login

Log in with gcloud.

    ./deploy.sh

Deploy the stack.

    ./undeploy.sh

Destroy the stack.

## TODO

- additional features to application
  - show map for coordinates
  - show beacons on map
- multi stage docker image
- cloud build for docker image
