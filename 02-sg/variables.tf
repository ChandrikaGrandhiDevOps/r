variable "common_tags" {
  default = {
    Project = "roboshop"
    Environment = "dev"
    Terrafrom = "true"
  }
}

variable "project_name" {
  default = "roboshop"
}

variable "sg_tags" {
  default = {}
}

variable "environment" {
  default = "dev"
}

variable "mongodb_sg_ingress_rules" {
  default = [
    {
    description      = "Allow 443th port"
    from_port        = 443
    to_port          = 443
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
    },
    {
    description      = "Allow 80th port"
    from_port        = 80
    to_port          = 80
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
    #ipv6_cidr_blocks = [aws_vpc.main.ipv6_cidr_block]
  },
  ]
}

