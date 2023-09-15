# nextcloud-k8-test

## Requirements
Terraform
Helm
Docker Desktop with Kubernetes support enabled

## Usage
### Install dependencies
```
cd helm-charts/nextcloud
helm dependency update
```
### Run terraform
```
terraform init
terraform apply
```
