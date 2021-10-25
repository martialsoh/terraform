provider "aws" {
    region = "us-east-1"
}

# plan - execute
resource "aws_s3_bucket" "my_s3_bucket" {
    bucket = "mybox3"
    versioning {
        enabled = true
    }
}

resource "aws_iam_user" "my_iam_user" {
    name = "yann1"
}
