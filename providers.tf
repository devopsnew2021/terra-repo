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
resource "aws_iam_user" "terra-user-new" {
  name = "terra-user-new"
}
resource "aws_instance" "play-vm" {
  ami = var.amiid
  instance_type = var.inssize
  key_name = "terrakey"
  tags = {
    Name = "terra-cloud-vm"
  }
}