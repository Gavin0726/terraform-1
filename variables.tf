variable "instance_name" {
  description = "Value of the Name tag for the EC2 instance"
  type        = string
  default     = "ExampleAppServerInstance"
}
variable "AMIS" {
  type = map(string)
  default = {
    us-east-1 = "ami-0c2b8ca1dad447f8a"
    us-west-2 = "ami-06b94666"
    eu-west-1 = "ami-0d729a60"
  }
}
variable "AWS_REGION" {
  default = "us-east-1"
}



variable "ingress" {
    type = list(number)
    default = [80,443]
}

variable "egress" {
    type = list(number)
    default = [80,443]
}

variable "backend_ec2" {
  type = object({ name = string, AMI = string })
  default = {
    name = "TJ"
    AMI = [22, 25, 80]
  }
}
