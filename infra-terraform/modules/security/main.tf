
resource "aws_security_group" "eks_cluster" {
  name   = "eks-cluster-sg"
  vpc_id = var.vpc_id
}

resource "aws_security_group" "eks_nodes" {
  name   = "eks-node-sg"
  vpc_id = var.vpc_id
}

resource "aws_security_group" "efs_sg" {
  name   = "efs-sg"
  vpc_id = var.vpc_id
}
