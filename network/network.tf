resource "aws_vpc" "terraformvpc" {
    cidr_block = "10.0.0.0/16"
    tags= {
        name= "terraformvpc"
    }
  }