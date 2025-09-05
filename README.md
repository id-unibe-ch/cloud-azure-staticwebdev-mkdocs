# Deploy a MkDocs site to Azure Static Web Apps

This repository represents a MkDocs documentation that is deployed to Azure Static Web
Apps. It features everything needed to create a static web app and to deploy the MkDocs
site into it.

Fork this repo to your account/organisation and start provisioning and deploying
to a subscription of yours.

## Prerequisites

* A fork of this repo on GitHub, where you have full access to it
* An Azure subscription with permission to create resources
* The tools `git`, `gh` (GitHub CLI) and `terraform` (or OpenTofu) installed on
your machine
* `gh` needs to be authenticated with an account that has access to your fork

## Setup

Clone your fork to your local machine. Then adjust `terraform/terraform.tfvars`
to your liking. The `repository_fullname` must point to your fork. Do not forget
to adjust the tags.

The terraform state is saved locally in this example. If you need remote state,
you need to configure a backend accordingly, which is not in the scope of this
example.

Now, run the commands below and follow the onscreen instructions.

```bash
cd infra
export ARM_SUBSCRIPTION_ID=<your-subscription-id>
terraform init
terraform plan -out=tfplan
terraform apply tfplan
```
