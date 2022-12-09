variable "aws_region" {
  description = "Region in which AWS Resources to be created"
  type = string
  default = "us-east-1"
}

variable "instance_type" {
  description = "EC2 Instance Type"
  type = string
  default = "t2.micro"
}

variable "instance_keypair" {
  description = "AWS EC2 Key Pair that need to be associated with EC2 Instance"
  type = string
  default = "terraform-key"
}

variable "instance_type_list" {
  description = "EC2 instance type"
  type = list(string)
  default = [ "t2.micro", "t3.small", "t3.large" ]
}

variable "instance_type_map" {
  description = "EC2 instance type"
  type = map(string)
  default =  {
    "dev" = "t3.micro"
    "qa" = "t3.small"
    "prod" = "t3.large"
  } 
}