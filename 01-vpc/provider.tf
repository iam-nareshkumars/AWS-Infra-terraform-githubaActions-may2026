provider "aws" {
  alias  = "dev_NV"
  region = "us-east-1"
  # assume_role {
  #   role_arn = "arn:aws:iam::111111111111:role/TerraformRole"
  # }
}
provider "aws" {
  alias  = "dev_MUM"
  region = "ap-south-1"
  # assume_role {
  #   role_arn = "arn:aws:iam::111111111111:role/TerraformRole"
  # }
}


terraform {
  required_providers {
    aws = {
      
      source  = "hashicorp/aws"
      version = "~> 6.0"
     
 }
 
    }
backend "s3" {
   bucket = "us-eternal-s3-bucket-terraform-state-file"
 #  bucket = "aws-infra-terraform-statefile-bucket-mumbai-002"
   key    = "vpc/dev/terraform.tfstate"
   encrypt = "true"
   region = "us-east-1"
   use_lockfile = "true"
   
}

}
