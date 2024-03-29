terraform {
  required_providers {
    tfe = {
      version = "~> 0.33"
    }
  }
}

provider "tfe" {}

data "tfe_outputs" "generic" {
  organization = "atanas-free"
  workspace    = "tf-null-count-test1"
}

resource "null_resource" "test" {
  triggers = {
    uuid = uuid()
  }
  provisioner "local-exec" {
    command = "echo ${data.tfe_outputs.generic.values.generic_name}"
  }
}

resource "random_pet" "generic" {
  length    = "3"
  separator = "-"
}
