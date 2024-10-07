terraform {
  required_version = ">= 1.0"
  backend "s3" {
    bucket = "tfstate-bucket-1907-1"
    key = "infra/state.tfstate"
    region = "eu-central-1"
  }
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 5.0"
    }
    kubernetes = {
      source = "hashicorp/kubernetes"
      version = ">= 2.20"
    }
    helm = {
      source = "hashicorp/helm"
      version = "2.12.1"
    }
  }
}