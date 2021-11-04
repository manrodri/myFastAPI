//"cidr_block" = "10.0.0.0/16"
//    "private_subnets": [
//        "10.0.10.0/24",
//        "10.0.11.0/24",
//        "10.0.12.0/24"
//    ],
//    "public_subnets": [
//        "10.0.0.0/24",
//        "10.0.1.0/24",
//        "10.0.2.0/24"
//    ],
//    "subnet_count": "3"

cidr_block = "10.0.0.0/16"

private_subnets = {
  "Development": [
    "10.0.10.0/24",
    "10.0.11.0/24"
  ],
  "Production": [
    "10.0.10.0/24",
    "10.0.11.0/24",
    "10.0.12.0/24"
  ]
}

public_subnets = {
  "Development": [
    "10.0.0.0/24",
    "10.0.1.0/24"
  ],
  "Production": [
    "10.0.0.0/24",
    "10.0.1.0/24",
    "10.0.2.0/24"
  ]
}

subnet_count = {
  "Development": 2,
  "Production": 3
}
