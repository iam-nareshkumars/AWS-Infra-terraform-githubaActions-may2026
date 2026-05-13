terraform {
backend "s3" {
  bucket = "us-eternal-s3-bucket-terraform-state-file"
  #bucket = "aws-infra-terraform-statefile-bucket-001"
   key    = "vpc/dev/nv/terraform.tfstate"
   encrypt = "true"
   region = "us-east-1"
   use_lockfile = "true"
   profile = "role-jump-vpc-ec2-s3-ff"
   
}
}