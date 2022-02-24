resource "null_resource" "MultiHelloWorld" {
  count = ${var.multiple}
  provisioner "local-exec" {
    command = "sleep ${count.index+18}"
  }
}
