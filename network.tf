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

resource "aws_security_group" "web_sg" {
  name        = "web-server-sg"
  description = "Permite acesso HTTP e SSH"
  vpc_id      = aws_vpc.minha_vpc.id

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}