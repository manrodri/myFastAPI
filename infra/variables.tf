variable "profile" {
  default = "devops"
}
variable "region" {
  default = "eu-west-1"
}

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