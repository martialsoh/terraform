variable "iam_user_name_prefix" {
  #type    = string #any, number, bool, list, map, set, object, tuple
  default = "my_iam_user"
}

provider "aws" {
  region = "us-east-1"
}


resource "aws_iam_user" "my_iam_users" {
  count = 3
  name  = "yann1_${count.index}"
}
