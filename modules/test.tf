resource "null_resource" "MultiHelloWorld" {
  triggers = {
    uuid = uuid()
  }
  provisioner "local-exec" {
    command = "echo ${TFC_WORKSPACE}"
  }
}

resource "null_resource" "MultiHelloWorld2" {
  triggers = {
    uuid = uuid()
  }
  provisioner "local-exec" {
    command = "echo ${TFC_WORKSPACE}"
  }
}
