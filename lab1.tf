# lab1.tf
# Create ec2

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "us-east-1" 
}

# Create the EC2 Instance
resource "aws_instance" "my_server" {
  ami           = "ami-0c101f26f147fa7fd" # Replace with a valid AMI ID for your region
  instance_type = "t2.micro"

  tags = {
    Name = "Terraform-EC2-Instance"
  }
}
