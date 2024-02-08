# script generates 3 random names and chooses random name from them
########### Locals ###########
locals {
  name_1     = random_pet.name_1.id
  name_2     = random_pet.name_2.id
  name_3     = random_pet.name_3.id
}

resource "random_pet" "name_1" {
  length = 1
}

resource "random_pet" "name_2" {
  length = 1
}

resource "random_pet" "name_3" {
  length = 1
}

resource "random_shuffle" "random" {
  input        = ["${local.name_1}", "${local.name_2}", "${local.name_3}"]
  result_count = 1
}

output "random_name_1" {
  value = "${local.name_1}"
}

output "random_name_2" {
  value = "${local.name_2}"
}

output "random_name_3" {
  value = "${local.name_3}"
}

output "random" {
  value = "${random_shuffle.random.result}"
}

