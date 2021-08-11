resource "null_resource" "MultiHelloWorld" {
  count = var.multiple
  provisioner "local-exec" {
    command = "echo Hello world!"
  }
}
