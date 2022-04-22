resource "random_pet" "pet" {
  length = var.petNameLength
  separator = " "

  keepers = {
    pet_keeper = "${var.pet_keeper}"
  }
}

resource "random_integer" "age" {
  min = 1
  max = 15
  
  keepers = {
    pet_keeper = "${var.pet_keeper}"
  }
}

resource "null_resource" "greeting" {
  triggers = {
    greet_trigger = "${var.pet_keeper}"
  }
  provisioner "local-exec" {
    command = "echo Welcome to the family, ${random_pet.pet.id}!; echo You are ${random_integer.age.result} y.o.; curl -X POST -H 'Content-type: text/html' --data 'NEW PET JUST ARRIVED! ${random_pet.pet.result} is so cute!' https://webhook.site/90a919b7-0680-4b2b-b332-5fbdf03b75ad" 
  }
}
