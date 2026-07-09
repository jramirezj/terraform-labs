
module "network" {
  source = "./network"

  in_vpc_cidr    = var.vpc_cidr[terraform.workspace]
  in_subnet_cidr = var.subnet_cidr[terraform.workspace]
  in_tags        = var.tags
}


module "infra" {
  source = "./infra"

  in_ami        = var.ami[terraform.workspace]
  in_instance = var.instance[terraform.workspace]
  in_subnet_id = module.network.subnet_id  
  in_tags        = var.tags

}
