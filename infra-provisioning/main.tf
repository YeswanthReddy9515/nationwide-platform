
module "vpc" {
  source = "./modules/vpc"
}

module "iam" {
  source = "./modules/iam"
}

module "eks" {
  source           = "./modules/eks"
  cluster_role_arn = module.iam.eks_cluster_role_arn
}

module "efs" {
  source = "./modules/efs"
}

module "s3" {
  source = "./modules/s3"
}
