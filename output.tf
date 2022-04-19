output "very_long" {
  value = "КИРИЛЛИЦА Lorem dfipsusdm dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum"
  description = "Both Latin and Cyrillic placeholder text"  
}

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