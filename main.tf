resource "null_resource" "MultiHelloWorld" {
  count = var.multiple
  triggers = "${map("a", "b")}"
  provisioner "local-exec" {
    command = "sleep ${count.index+18}"
  }
}
