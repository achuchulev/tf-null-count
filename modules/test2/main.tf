data "tfe_outputs" "generic" {
  organization = "atanas-free"
  workspace    = "tf-null-count-test1"
}

resource "null_resource" "test" {
  provisioner "local-exec" {
    command = "echo $${data.tfe_outputs.generic.values.generic_name}"
  }
}
