resource "null_resource" "MultiHelloWorld" {
  count = var.multiple
  provisioner "local-exec" {
    #command = "sleep ${count.index+18}"
    command = "echo id: ${var.aws_access_key_id} key: ${var.aws_secret_access_key} ID: $AWS_ACCESS_KEY_ID  KEY: $AWS_SECRET_ACCESS_KEY"
  }
}
