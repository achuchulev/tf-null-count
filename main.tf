resource "null_resource" "MultiHelloWorld" {
  count = var.multiple
  provisioner "local-exec" {
    #command = "sleep ${count.index+18}"
    #command = "python3 --version"
    #command = "which python"
    #command = "which python3"
    #command = "whereis python3"
    #command = "echo Workspace name: ${terraform.workspace}"
    command = "This is a test"
  }
}
