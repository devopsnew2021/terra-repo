provider "aws" {
  region = "ap-southeast-1"
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