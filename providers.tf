provider "aws" {
  region = "ap-southeast-1"
  access_key = var.accesskey
  secret_key = var.secretaccesskey
}
terraform {
  backend "remote" {
    organization = "terracloudhimanshu"
    workspaces {
      name = "terra-repo"
    }
  }

}
