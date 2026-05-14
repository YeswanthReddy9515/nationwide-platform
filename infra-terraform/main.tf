
terraform {
  backend "s3" {
    bucket         = "nationwide-terraform-state"
    key            = "prod/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraform-locks"
  }
}

provider "aws" {
  region = "us-east-1"
}

module "vpc" {
  source = "./modules/vpc"
}

module "iam" {
  source = "./modules/iam"
}

module "eks" {
  source           = "./modules/eks"
  subnet_ids       = module.vpc.private_subnet_ids
  cluster_role_arn = module.iam.eks_cluster_role_arn
}

module "efs" {
  source     = "./modules/efs"
  subnet_ids = module.vpc.private_subnet_ids
}

module "s3" {
  source = "./modules/s3"
}
