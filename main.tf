# IaC Buildout for Terraform Associate Exam

# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
}

# Create a VPC
resource "aws_vpc" "example" {
  cidr_block = "10.0.0.0/16"
}



# begins a single-line comment, ending at the end of the line.

// also begins a single-line comment, as an alternative to #.

/* and */ #are start and end delimiters for a comment that might span over multiple lines



/*
Name: IaC Buildout for Terraform Associate Exam
Description: AWS Infrastructure Buildout
Contributors: Elias
*/

resource "tls_private_key" "generated" {
  algorithm = "RSA"
}

resource "local_file" "private_key_pem" {
  content  = tls_private_key.generated.private_key_pem
  filename = "MyAWSKey.pem"
}
