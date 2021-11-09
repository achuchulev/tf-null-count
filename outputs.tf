output "random_names" {
  value = null_resource.MultiHelloWorld.*.id
}
