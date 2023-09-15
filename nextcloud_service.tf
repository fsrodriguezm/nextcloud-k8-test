resource "kubernetes_service" "my_service" {
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
      port        = 80
      protocol    = "TCP"
      target_port = 80
    }
    type = "LoadBalancer"
  }

}