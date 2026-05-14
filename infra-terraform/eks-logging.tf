
resource "aws_eks_cluster" "eks" {
  name = "nationwide-eks"

  enabled_cluster_log_types = [
    "api",
    "audit",
    "authenticator",
    "scheduler"
  ]
}
