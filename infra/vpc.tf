
##################################################################################
# RESOURCES
##################################################################################

# NETWORKING #
module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "~>2.0"

  name = "fastAPI-${terraform.workspace}"

  cidr            = var.cidr_block
  azs             = slice(data.aws_availability_zones.available.names, 0, terraform.workspace == "default" ? var.subnet_count["Development"]:  var.subnet_count[terraform.workspace])
  // slice extracts some consecutive elements from within a list. slice(list, startindex, endindex)
  private_subnets = terraform.workspace == "default" ? var.private_subnets["Development"] : var.private_subnets[terraform.workspace]
  public_subnets  = terraform.workspace == "default" ? var.public_subnets["Development"] : var.public_subnets[terraform.workspace]

  enable_nat_gateway = false

  create_database_subnet_group = false


  tags = {
    Environment = terraform.workspace
    Team        = "Network"
  }
}
