resource "helm_release" "fluent_bit" {
  name       = "fluent-bit-release"
  repository = "https://fluent.github.io/helm-charts"
  chart      = "fluent-bit"
  version    = "1.11.6"
  namespace  = var.observability_namespace_name

  set {
    name  = "backend.type"
    value = "forward"
  }

  set {
    name  = "backend.forward.port"
    value = 2020
  }
}