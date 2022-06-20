resource "null_resource" "MultiHelloWorld" {
  provisioner "local-exec" {
    command = "ls -la path.root"
  }
}
