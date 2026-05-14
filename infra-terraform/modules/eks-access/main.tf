
resource "aws_eks_access_entry" "platform_admin" {
  cluster_name  = var.cluster_name
  principal_arn = var.admin_role_arn
  type           = "STANDARD"
}
