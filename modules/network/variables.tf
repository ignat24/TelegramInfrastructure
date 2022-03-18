data "aws_availability_zones" "avaliable" {
  
}

variable "app" {
  default = "default_app_name"
}
variable "vpc_cidr" {
  default = "10.0.0.0/16"
}

variable "aws_region" {
  
}

variable "env" {
  default = "default"
}

variable "az_count" {
  description = "Count of using availability zones"
  default = 1
}


variable "cidr_block_route" {
    default = "0.0.0.0/0"
}
