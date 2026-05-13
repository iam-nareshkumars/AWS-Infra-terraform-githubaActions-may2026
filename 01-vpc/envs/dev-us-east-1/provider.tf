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
  region = "us-east-1"
  profile = "role-jump-vpc-ec2-s3-ff"

  #   assume_role {
  #   role_arn = "arn:aws:iam::703671922956:role/terraform_aws_vpc_fullaccess_eternaldev_sso"
  # }
}

# ✅ Aliased provider
/* provider "aws" {
  alias  = "dev_NV"
  region = "us-east-1"
} */
