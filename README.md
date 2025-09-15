# Deploy a MkDocs site to Azure Static Web Apps

This repository represents a MkDocs documentation that is deployed to Azure Static Web
Apps. It features everything needed to create a static web app and to deploy the MkDocs
site into it.

This repo is a template repo. You can [create your own copy of this
repo][link_copyrepo] and start provisioning and deploying to a subscription of
yours.

[link_copyrepo]: https://github.com/new?template_name=cloud-azure-staticwebapp-mkdocs&template_owner=id-unibe-ch

## Prerequisites

* A copy of this repo on GitHub, where you have full access rights
* An Azure subscription with permission to create resources
* The tools `git`, `gh` (GitHub CLI) and `terraform` (or OpenTofu) installed on
your machine
* `gh` needs to be authenticated with an account that has access to your fork

## Setup

Clone your copy to your local machine and adjust the variables in the
`terraform/terraform.tfvars` file . Choose a meaningful workload name for your
use case, adjust the tags according your [tagging
strategy](https://learn.microsoft.com/en-us/azure/cloud-adoption-framework/ready/azure-best-practices/resource-tagging).
Make sure the variables `github_organisation` and `repository_name` point to
your copy at GitHub.

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
