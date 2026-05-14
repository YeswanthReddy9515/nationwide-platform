
resource "aws_eks_cluster" "eks" {
  name     = "nationwide-eks"
  role_arn = var.cluster_role_arn

  vpc_config {
    subnet_ids = []
  }
}
