module "prod" {
  source = "../../modules/aws"
  
  username = "totem"
  password = "passwordsecret"
}