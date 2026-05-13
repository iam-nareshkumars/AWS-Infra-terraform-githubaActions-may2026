/*  variable "cidr_block" {
  default = "192.168.0.0/16"
 }
 variable   "public_subnet" {
   default = ["192.168.1.0/24","192.168.2.0/24"]
 }
variable  "private_subnet" {
    default = ["192.168.11.0/24","192.168.12.0/24"]
   }
variable "db_subnet" {
   default = ["192.168.21.0/24","192.168.22.0/24"]
}
 variable   "environment"  {
    default = "qa"
 }
 variable "availability_zones" {
    default = ["us-east-1a","us-east-1b"]
}
  */
variable  "project" {
    default = "eternalplace"
} 


variable "environment" {
   default = "dev"
}

variable "multi_vpc" {
  type = map(object({
    name = string
    cidr_block = string
    public_subnet        = list(string)
    private_subnet      = list(string)
    db_subnet =  list(string)
    availability_zones = list(string)
    
    

  }))
}
  /* default = {
    vpc1 = {
      name = "security-vpc"
      cidr_block = "192.168.0.0/16"
      public_subnet        = ["192.168.1.0/24","192.168.2.0/24"]
      private_subnet      = ["192.168.11.0/24","192.168.12.0/24"]
      db_subnet =  ["192.168.21.0/24","192.168.22.0/24"]
      availability_zones = ["us-east-1a","us-east-1b"]
      
      
    
    }
    vpc2 = {
      name = "shared-vpc"
      cidr_block = "172.31.0.0/16"
      public_subnet        = ["172.31.1.0/24","172.31.2.0/24"]
      private_subnet      = ["172.31.11.0/24","172.31.12.0/24"]
      db_subnet =  ["172.31.21.0/24","172.31.22.0/24"]
      availability_zones = ["us-east-1a","us-east-1b"]
      
    }
  }
} */