project = "eternal"
environment = "dev"
region = "ap-south-1"

multi_vpc = {
vpc1 = {
      department_name = "IT-department"
      cidr_block = "10.3.0.0/16"
      public_subnet        = ["10.3.1.0/24","10.3.2.0/24"]
      private_subnet      = ["10.3.3.0/24","10.3.4.0/24"]
      db_subnet =  ["10.3.5.0/24","10.3.6.0/24"]
      availability_zones = ["ap-south-1a","ap-south-1b"]
      }
    vpc2 = {
      department_name = "Finance-ops"
      cidr_block = "10.4.0.0/16"
      public_subnet        = ["10.4.1.0/24","10.4.2.0/24"]
      private_subnet      = ["10.4.3.0/24","10.4.4.0/24"]
      db_subnet =  ["10.4.5.0/24","10.4.6.0/24"]
      availability_zones = ["ap-south-1a","ap-south-1b"]
      
    }
    } 