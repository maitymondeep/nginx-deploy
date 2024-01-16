module "infra" {
  source = "../../stacks/v0.0.1/"

  env_name                     = var.env_name
  observability_namespace_name = var.observability_namespace_name
  application_namespace_name   = var.application_namespace_name

}