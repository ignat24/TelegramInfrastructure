provider "aws" {
  region = var.aws_region
}


terraform {
  backend "s3" {}
}

resource "aws_ecr_repository" "ecr_repository_bot" {
  name = "repository-${var.app}"
}