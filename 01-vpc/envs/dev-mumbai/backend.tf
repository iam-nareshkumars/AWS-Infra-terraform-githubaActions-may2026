terraform {
backend "s3" {
   bucket = "mumbai-eternal-s3-bucket-terraformstate-file"
   
 #  bucket = "aws-infra-terraform-statefile-bucket-mumbai-002"
   key    = "vpc/dev/ap-south-1/terraform.tfstate"
   encrypt = "true"
   region = "ap-south-1"
   #profile = "role-jump-vpc-ec2-s3-ff"
   use_lockfile = "false"
   }
}