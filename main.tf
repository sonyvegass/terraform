terraform {
  required_version = ">= 1.0.0"

  backend "gcs" {
    bucket = "innovorder-terraform"
    prefix = "infrastructure/google/static-websites-v2"
  }

  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 4.53.1"
    }

    google-beta = {
      source  = "hashicorp/google-beta"
      version = "~> 4.53.1"
    }
  }
}

provider "google" {
  region  = "europe-west1"
  project = "innovorder-${terraform.workspace}"
}

provider "google-beta" {
  region  = "europe-west1"
  project = "innovorder-${terraform.workspace}"
}

