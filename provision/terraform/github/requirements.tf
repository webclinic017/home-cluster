terraform {
  backend "remote" {
    organization = "larivierec"
    workspaces {
      name = "home-github-provisioner"
    }
  }

  required_providers {
    github = {
      source  = "integrations/github"
      version = "5.24.0"
    }
    sops = {
      source  = "carlpett/sops"
      version = "0.7.2"
    }
  }
}