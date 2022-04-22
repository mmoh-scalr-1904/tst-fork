output "sens_output" {
  value = "secret data"
  description = "Sensitive output description"
  sensitive = true
}

output "pet_name" {
  value = random_pet.pet.id
  description = "Pet's name"
  sensitive = false
}

output "pet_age" {
  value = random_integer.age.result
  description = "Pet's age"
  sensitive = false
}
