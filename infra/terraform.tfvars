resource_name_workload    = "mkdocs"
resource_name_environment = "test"

location = "westeurope"

github_organisation = "my_org"
repository_name = "cloud-azure-staticwebdev-mkdocs"


app_config = {
  app_location    = "/site"
  output_location = "./"
}

tags = {
  division    = "my_div"
  subdivision = "my_ou"
  managed_by  = "terraform"
}

enable_telemetry = false
