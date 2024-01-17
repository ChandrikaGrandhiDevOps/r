module "mongodb" {
  source = "../../terraform-aws-security-group"
  project_name = var.project_name
  environment = var.environment
  vpc_id = data.aws_ssm_parameter.vpc_id.value
  sg_name = "mongodb"
  sg_tags = var.sg_tags
  sg_description = "SG for mongodb"
  #sg_ingress_rules = var.mongodb_sg_ingress_rules
}

module "catalogue" {
  source = "../../terraform-aws-security-group"
  project_name = var.project_name
  environment = var.environment
  vpc_id = data.aws_ssm_parameter.vpc_id.value
  sg_name = "catalogue"
  sg_tags = var.sg_tags
  sg_description = "SG for catalogue"
  #sg_ingress_rules = var.mongodb_sg_ingress_rules
}

module "user" {
  source = "../../terraform-aws-security-group"
  project_name = var.project_name
  environment = var.environment
  vpc_id = data.aws_ssm_parameter.vpc_id.value
  sg_name = "user"
  sg_tags = var.sg_tags
  sg_description = "SG for user"
  #sg_ingress_rules = var.mongodb_sg_ingress_rules
}

resource "aws_security_group_rule" "mongodb_catalogue" {
  #source_security_group_id = module.catalogue.sg_id
  type              = "ingress"
  from_port         = 27017
  to_port           = 27017
  protocol          = "tcp"
  security_group_id = module.mongodb.sg_id
}

resource "aws_security_group_rule" "mongodb_user" {
  type              = "ingress"
  from_port         = 27017
  to_port           = 27017
  protocol          = "tcp"
  security_group_id = module.mongodb.sg_id
}

