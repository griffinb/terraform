remote_state {
    backend = "s3"

    config = {
        bucket         = "bg-tf-state"
        key            = "global/s3/terraform.tfstate"
        region         = "us-east-1"
        encrypt        = true
        dynamodb_table = "my-lock-table"
    }
}
