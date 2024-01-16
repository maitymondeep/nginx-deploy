resource "helm_release" "kibana" {
  name       = "kibana-release"
  repository = "https://charts.elastic.co"
  chart      = "kibana"
  namespace  = var.observability_namespace_name
  version    = "7.16.0" # Specify the desired Kibana version

  set {
    name  = "elasticsearchHosts"
    value = "https://elasticsearch-master:9200" # Specify the address of your Elasticsearch service
  }
}