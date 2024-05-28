variable "aws_access_key" {
  description = "AWS Access Key"
  type        = string
}

variable "aws_secret_key" {
  description = "AWS Secret Key"
  type        = string
}

variable "aws_region" {
  description = "AWS Region"
  type        = string
}

variable "amis" {
  description = "AMIs by region"
  type        = map(string)
  default = {
    us-east-1 = "ami-97785bed" # ubuntu 14.04 LTS
    us-east-2 = "ami-f63b1193" # ubuntu 14.04 LTS
    us-west-1 = "ami-824c4ee2" # ubuntu 14.04 LTS
    us-west-2 = "ami-f2d3638a" # ubuntu 14.04 LTS
  }
}

variable "vpc_cidr" {
  description = "VPC CIDR block"
  type        = string
}

variable "vpc_name" {
  description = "Name of the VPC"
  type        = string
}

variable "IGW_name" {
  description = "Name of the Internet Gateway"
  type        = string
}

variable "key_name" {
  description = "Name of the SSH key"
  type        = string
}

variable "public_subnet1_cidr" {
  description = "CIDR block for public subnet 1"
  type        = string
}

variable "public_subnet2_cidr" {
  description = "CIDR block for public subnet 2"
  type        = string
}

variable "public_subnet3_cidr" {
  description = "CIDR block for public subnet 3"
  type        = string
}

variable "private_subnet_cidr" {
  description = "CIDR block for private subnet"
  type        = string
}

variable "public_subnet1_name" {
  description = "Name of public subnet 1"
  type        = string
}

variable "public_subnet2_name" {
  description = "Name of public subnet 2"
  type        = string
}

variable "public_subnet3_name" {
  description = "Name of public subnet 3"
  type        = string
}

variable "private_subnet_name" {
  description = "Name of private subnet"
  type        = string
}

variable "Main_Routing_Table" {
  description = "Name of the main routing table"
  type        = string
}

variable "azs" {
  description = "Run the EC2 Instances in these Availability Zones"
  type        = list(string)
  default     = ["us-east-1a", "us-east-1b", "us-east-1c"]
}

variable "environment" {
  description = "Environment name"
  type        = string
  default     = "dev"
}

variable "instance_type" {
  description = "Instance type based on environment"
  type        = map(string)
  default = {
    dev  = "t2.nano"
    test = "t2.micro"
    prod = "t2.medium"
  }
}
