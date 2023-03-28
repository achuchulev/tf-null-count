resource "null_resource" "new" {
  triggers = {
    uuid = uuid()
  }
  provisioner "local-exec" {
    command = "cat ../../variables.tf"
  }
}

resource "random_pet" "generic" {
  length    = "3"
  separator = "-"
}
