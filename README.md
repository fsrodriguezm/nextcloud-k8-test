# nextcloud-k8-test

## Requirements
Terraform </br>
Helm </br>
Docker Desktop (K8 support enabled) </br>

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
## Access application
```
http://localhost/login
```
