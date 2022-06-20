resource "null_resource" "MultiHelloWorld" {
  triggers = {
    uuid = uuid()
  }
  provisioner "local-exec" {
    command = "cat //variables.tf"
  }
}
