provider "aws" {
    region = "us-east-1"
}

terraform {
  backend "s3" {}
}

resource "aws_s3_bucket" "terraform_state" {
    bucket = "bg-tf-state"

    versioning {
        enabled = true
    }

    lifecycle {
        prevent_destroy = true
    }
}

output "s3_bucket_arn" {
    value = "${aws_s3_bucket.terraform_state.arn}"
}
