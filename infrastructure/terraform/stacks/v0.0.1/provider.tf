provider "helm" {
  kubernetes {
    config_path = "~/.kube/config" # Specify the path to your kubeconfig file
  }
}