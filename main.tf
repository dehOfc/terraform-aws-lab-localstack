terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region                      = "us-east-1"
  access_key                  = "test"
  secret_key                  = "test"
  skip_credentials_validation = true
  skip_metadata_api_check     = true
  skip_requesting_account_id  = true
  
  # AQUI ESTÁ O PULO DO GATO:
  endpoints {
    ec2 = "http://localhost:4566"
    sts = "http://localhost:4566"
    s3  = "http://localhost:4566"
  }
}

resource "aws_vpc" "minha_vpc" {
  cidr_block = "10.0.0.0/16"
  tags = {
    Name = "VPC-Localstack"
  }
}

resource "aws_subnet" "minha_subnet" {
    vpc_id = aws_vpc.minha_vpc.id
    cidr_block ="10.0.1.0/24"
    availability_zone = "us-east-1a"

    tags = {
        Name = "Subnet-Publica-Localstack"
    }
}