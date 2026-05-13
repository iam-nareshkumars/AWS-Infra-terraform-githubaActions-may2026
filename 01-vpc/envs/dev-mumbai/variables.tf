# envs/dev/variables.tf
variable "region" {
  type        = string
}
variable "project" {
  type        = string
  description = "Project name from root"
}

variable "environment" {
  type        = string
  description = "Environment name (dev, qa, prod)"
}

variable "multi_vpc" {
  type = map(object({
    department_name               = string
    cidr_block         = string
    public_subnet      = list(string)
    private_subnet     = list(string)
    db_subnet          = list(string)
    availability_zones = list(string)
  }))
  description = "Map of VPC configurations"
}