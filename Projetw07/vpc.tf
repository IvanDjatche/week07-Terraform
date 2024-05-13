#cretate vpc

resource "aws_vpc" "projet07" {
  cidr_block       = "10.10.0.0/16"
  instance_tenancy = "default"

  tags = {
    Name = "splunk-vpc"
    env  = "Dev"
  }
}

