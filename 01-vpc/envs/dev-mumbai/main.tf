module "vpc_infra" {
    for_each = var.multi_vpc
    source = "git::https://github.com/iam-nareshkumars/terraform-modules.git//terraform-vpc-module?ref=main"
    cidr_block = each.value["cidr_block"]
    availability_zones = each.value["availability_zones"]
    public_subnet = each.value["public_subnet"]
    private_subnet = each.value["private_subnet"]
    db_subnet = each.value["db_subnet"]
    environment = var.environment
    department_name = each.value["department_name"]
    project = var.project
    is_vpc_peer_required = "false"
    accepter_peer_id = ""
  
}
/* 
Environment	Source Reference	Benefit
Development	?ref=feature-new-subnets	Test new features without risk.
Staging	?ref=main	Test the latest merged code.
Production	?ref=v2.1.0	Immutable. Guaranteed not to change. */