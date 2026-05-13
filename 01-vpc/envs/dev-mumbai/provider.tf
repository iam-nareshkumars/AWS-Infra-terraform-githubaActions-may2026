terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }
}

# ✅ Default provider (MANDATORY)
provider "aws" {
  region = var.region
  profile = "role-jump-vpc-ec2-s3-ff"

/*    assume_role {
    role_arn = "arn:aws:iam::722979336094:role/terraform_aws_admin_role"
  } */
}

# ✅ Aliased provider
provider "aws" {
  alias  = "dev_mum"
  region = var.region
}