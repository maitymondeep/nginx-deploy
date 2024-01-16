resource "helm_release" "elasticsearch" {
  name       = "elasticsearch-release"
  repository = "https://charts.elastic.co"
  namespace  = var.observability_namespace_name
  chart      = "elasticsearch"
  version    = "7.16.0" # Specify the desired Elasticsearch version

  set {
    name  = "master.resources.requests.memory"
    value = "512Mi" # Adjust resource requests based on your requirements
  }

  set {
    name  = "master.resources.requests.cpu"
    value = "250m"
  }

  set {
    name  = "data.resources.requests.memory"
    value = "512Mi"
  }

  set {
    name  = "data.resources.requests.cpu"
    value = "250m"
  }

  set {
    name  = "ingest.resources.requests.memory"
    value = "512Mi"
  }

  set {
    name  = "ingest.resources.requests.cpu"
    value = "250m"
  }
}