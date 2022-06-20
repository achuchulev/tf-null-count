resource "null_resource" "MultiHelloWorld" {
  provisioner "local-exec" {
    command = "pwd"
  }
}
