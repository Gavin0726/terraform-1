variable "backend_instance_name" {
  description = "Value of the Name tag for the EC2 instance"
  type        = string
  default = "core"
}

resource "aws_instance" "backend" {
    ami = "ami-0c2b8ca1dad447f8a"
    instance_type = "t2.micro"
    security_groups = [module.sg.sg_name]
    user_data = file("./backend/ec2/server-script.sh")
    tags = {
        Name = var.backend_instance_name
    }
}

module "sg" {
    source = "../sg"
}

output "PrivateIP" {
    value = aws_instance.backend.private_ip
}