terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
 }
 
    }
backend "s3" {
   bucket = "mumbai-eternal-s3-bucket-terraformstate-file"
   key    = "sg/qa/terraform.tfstate"
   encrypt = true
   use_lockfile = true
}
}

