module "sshinstance" {
  source = "./modules/sshinstances"

  name_prefix = "slimo"
  environment = "uat"
}
