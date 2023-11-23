terraform {
  required_providers {
    scalr = {
      source = "scalr/scalr"
      version = "~> 1.0"
    }
  }
}

resource "scalr_environment" "test" {
  name = var.environment_name
}

resource "scalr_workspace" "test" {
  environment_id = scalr_environment.test.id
  name = var.workspace_name
}

output "environment_id" {
  value = scalr_environment.test.id
}

output "workspace_id" {
  value = scalr_workspace.test.id
}
