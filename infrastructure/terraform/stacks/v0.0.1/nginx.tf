resource "helm_release" "nginx" {
  name       = "nginx-release"
  repository = "https://charts.bitnami.com/bitnami"
  chart      = "nginx"
  namespace  = var.application_namespace_name
  version    = "15.6.2" # Specify the desired NGINX version

  set {
    name  = "service.type"
    value = "NodePort"
  }

  set {
    name  = "service.ports.http"
    value = "80"
  }

  set {
    name  = "replicaCount"
    value = "2"
  }

  set {
    name  = "service.nodePorts.http"
    value = "30080" # Specify the desired NodePort
  }
}
