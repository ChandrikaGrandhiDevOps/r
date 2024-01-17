variable "cidr_block" {
  default = "10.0.0.0/16"
}

variable "common_tags" {
  default = {
    Project = "roboshop"
    Environment = "dev"
    Terrafrom = "true"
  }
}
variable "vpc_tags" {
  default = {}
}

variable "project_name" {
  default = "roboshop"
}

variable "environment" {
  default = "dev"
}

variable "igw" {
  type = map
  default = {}
}

variable "public_subnets_cidr" {
  default = ["10.0.1.0/24","10.0.2.0/24"]
}

variable "private_subnets_cidr" {
  default = ["10.0.11.0/24","10.0.12.0/24"]
}

variable "database_subnets_cidr" {
  default = ["10.0.21.0/24","10.0.22.0/24"]
}

variable "nat_gateway_tags" {
  default = {}
}

variable "public_route_table_tags" {
  default = {}
}

variable "private_route_table_tags" {
  default = {}
}

variable "database_route_table_tags" {
  default = {}
}

variable "is_peering_required" {
  default = true
}