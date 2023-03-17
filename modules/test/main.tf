resource "null_resource" "new" {
  triggers = {
    uuid = uuid()
  }
  provisioner "local-exec" {
    command = "cat ../../variables.tf"
  }
}

resource "null_resource" "new20" {
  triggers = {
    uuid = uuid()
  }
  provisioner "local-exec" {
    command = "cat ../../variables.tf"
  }
}
