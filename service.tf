resource "kubernetes_service" "nextcloud" {
  metadata {
    name = "nextcloud-app"
    labels = {
      "app.kubernetes.io/component" = "app"
    }
  }
  spec {
    selector = {
      "app.kubernetes.io/component" = "app"
    }
    port {
      port        = 8080
      protocol    = "TCP"
      target_port = 80
    }
    type = "LoadBalancer"
  }
}