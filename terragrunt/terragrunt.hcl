locals {
    app = "telebot"
    aws_profile = "default"
    aws_account = "873827770697"
    az_count = 1
    aws_region = "eu-north-1"
    image_version = "0.1"

}

inputs = {
    app = local.app
    aws_profile = local.aws_profile
    aws_account = local.aws_account
    aws_region = local.aws_region
    image_version = local.image_version
    az_count = local.az_count
}

remote_state {
    backend = "s3" 

    config = {
        encrypt = true
        bucket = "s3-${local.app}"
        key =  format("%s/terraform.tfstate", path_relative_to_include())
        region = local.aws_region
  }
}