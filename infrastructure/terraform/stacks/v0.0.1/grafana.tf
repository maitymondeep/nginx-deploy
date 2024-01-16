resource "random_password" "grafana" {
  length = 24
}

resource "helm_release" "grafana" {
  name       = "grafana-release"
  repository = "https://grafana.github.io/helm-charts"
  chart      = "grafana"
  namespace  = var.observability_namespace_name
  version    = "6.14.2" # Specify the desired Grafana version

  set {
    name  = "adminPassword"
    value = random_password.grafana.result
  }
}