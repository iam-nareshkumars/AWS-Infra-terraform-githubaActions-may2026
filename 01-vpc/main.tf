module "vpc_infra" {
    for_each = var.multi_vpc
    source = "git::https://github.com/Iam-naresh-devops/terraform-aws-vpc.git"
    cidr_block = each.value["cidr_block"]
    public_subnet = each.value["public_subnet"]
    private_subnet = each.value["private_subnet"]
    db_subnet = each.value["db_subnet"]
    environment = var.environment
    name = each.value["name"]
    project = var.project
    is_vpc_peer_required = "false"
    accepter_peer_id = ""
  
}

