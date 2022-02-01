module "sg_rules" {
  source  = "../modules/sg_rules"
  env     = var.env
  project = var.project
  default_config = {
  }

  option_config = {
  }

}

output "sg_rules-info" {
  value = module.sg_rules.*
}

