module "roboshop" {
    #source = "../aws-vpc"
    source = "git::https://github.com/ChandrikaGrandhiDevOps/rep.git?ref=main"
    project_name = var.project_name
    environment = var.environment
    common_tags = var.common_tags
    vpc_tags = var.vpc_tags
    public_subnets_cidr = var.public_subnets_cidr
    private_subnets_cidr = var.private_subnets_cidr
    database_subnets_cidr = var.database_subnets_cidr
    # nat_gateway_tags = var.nat_gateway_tags
    # public_route_table_tags = var.public_route_table_tags
    # private_route_table_tags = var.private_route_table_tags
    # database_route_table_tags = var.database_route_table_tags
    is_peering_required = var.is_peering_required
}