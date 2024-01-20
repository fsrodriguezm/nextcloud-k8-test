provider "helm" {
  kubernetes  {
    config_path    = "~/.kube/config"
    config_context = "docker-desktop"
  }
}

# repository = "https://nextcloud.github.io/helm"
resource "helm_release" "nextcloud" {
  name       = "nextcloud"
  chart      = "./helm-charts/nextcloud-3.5"
  values = [
    "${file("./helm-charts/nextcloud-3.5/values.yaml")}"
  ]
}