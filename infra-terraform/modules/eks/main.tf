
resource "aws_eks_cluster" "eks" {
  name     = "nationwide-eks"
  role_arn = var.cluster_role_arn

  vpc_config {
    subnet_ids = var.subnet_ids
  }
}

resource "aws_eks_node_group" "etl_workers" {
  cluster_name    = aws_eks_cluster.eks.name
  node_group_name = "etl-workers"
  node_role_arn   = var.cluster_role_arn
  subnet_ids      = var.subnet_ids

  scaling_config {
    desired_size = 3
    max_size     = 6
    min_size     = 2
  }

  instance_types = ["m5.xlarge"]
}
