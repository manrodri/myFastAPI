##################################################################################
# aws
##################################################################################

variable "profile" {
  default = "devops"
}
variable "region" {
  default = "eu-west-1"
}

##################################################################################
# VPC
##################################################################################

variable "cidr_block" {
  default = "10.0.0.0/16"
}

variable "subnet_count" {
  type = map(any)

}

variable "private_subnets" {
  type = map(any)
}

variable "public_subnets" {
  type = map(any)
}

##################################################################################
# ASG
##################################################################################

variable "asg_instance_size" {
  type = map(any)
}

variable "asg_max_size" {
  type = map(any)
}

variable "asg_min_size" {
  type = map(any)
}

variable "key_name" {
  type = string
}

##################################################################################
# LOCALS
##################################################################################

locals {
  common_tags = {
    Environment = terraform.workspace == "default" ? "Development" : terraform.workspace,
    Team        = "Networks"
  }

}