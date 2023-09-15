output "service_url" {
  value = kubernetes_service.my_service.spec
}