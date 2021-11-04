
cidr_block = "10.0.0.0/16"

private_subnets = {
  "Development" : [
    "10.0.10.0/24",
    "10.0.11.0/24"
  ],
  "Production" : [
    "10.0.10.0/24",
    "10.0.11.0/24",
    "10.0.12.0/24"
  ]
}

public_subnets = {
  "Development" : [
    "10.0.0.0/24",
    "10.0.1.0/24"
  ],
  "Production" : [
    "10.0.0.0/24",
    "10.0.1.0/24",
    "10.0.2.0/24"
  ]
}

subnet_count = {
  "Development" : "2",
  "Production" : "3"
}

##################################################################################
# ASG
##################################################################################


asg_instance_size = {
  "Development" : "t2.micro",
  "Production" : "t2.micro"
}

asg_max_size = {
  "Development" : "2",
  "Production" : "5"
}

asg_min_size = {
  "Development" : "1",
  "Production" : "2"
}

key_name = "devops"
