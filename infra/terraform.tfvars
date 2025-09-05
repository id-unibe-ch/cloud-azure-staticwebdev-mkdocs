resource_name_workload    = "mkdocs"
resource_name_environment = "test"

location = "westeurope"

github_organisation = "id-unibe-ch"
repository_name = "cloud-azure-staticwebdev-mkdocs"


app_config = {
  app_location    = "/site"
  output_location = "./"
}

tags = {
  division    = "id"
  subdivision = "idci"
  managed_by  = "terraform"
}

enable_telemetry = false
