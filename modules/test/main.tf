resource "null_resource" "MultiHelloWorld" {
  triggers = {
    uuid = uuid()
  }
  provisioner "local-exec" {
    command = "echo ${TFC_WORKSPACE}"
  }
}

resource "null_resource" "new" {
  triggers = {
    uuid = uuid()
  }
  provisioner "local-exec" {
    command = "cat ../../variables.tf"
  }
}
