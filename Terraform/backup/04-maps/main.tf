variable "users" {
  default = {
    ravs:{country: "cameroon,", departement: "A"},
    tom:{country: "US,", departement: "B"}, 
    jane:{country: "uk", departement: "C" }
    }
}

provider "aws" {
  region  = "us-east-1"
}

resource "aws_iam_user" "my_iam_users" {
  #count = length(var.names)
  #name  = var.names[count.index]
  for_each = var.users
  tags = {
    country: each.value.country
  }
  name = each.value
  country: each.value.country
}