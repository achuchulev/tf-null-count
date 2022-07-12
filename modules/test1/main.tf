resource "random_pet" "generic" {
  length    = "4"
  separator = "-"
}

output "generic_name" {
  value = random_pet.generic.id
}
