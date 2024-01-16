variable "env_name" {
  default     = "dev"
  type        = string
  description = "Name of the environment"
}
variable "observability_namespace_name" {
  default     = "observability-platform"
  type        = string
  description = "Name of the observability Namespace"
}
variable "application_namespace_name" {
  type        = string
  description = "Name of the observability Namespace"
}
