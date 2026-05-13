project = "eternal"
environment = "dev"

multi_vpc = {
vpc1 = {
      department_name = "security-vpc"
      cidr_block = "192.168.0.0/16"
      public_subnet        = ["192.168.1.0/24","192.168.2.0/24"]
      private_subnet      = ["192.168.11.0/24","192.168.12.0/24"]
      db_subnet =  ["192.168.21.0/24","192.168.22.0/24"]
      availability_zones = ["us-east-1a","us-east-1b"]
      
      
    
    }
    vpc2 = {
      department_name = "shared-vpc"
      cidr_block = "172.31.0.0/16"
      public_subnet        = ["172.31.1.0/24","172.31.2.0/24"]
      private_subnet      = ["172.31.11.0/24","172.31.12.0/24"]
      db_subnet =  ["172.31.21.0/24","172.31.22.0/24"]
      availability_zones = ["us-east-1a","us-east-1b"]
      
    }
    } 