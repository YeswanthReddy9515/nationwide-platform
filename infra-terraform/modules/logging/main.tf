
resource "aws_cloudwatch_log_group" "eks_logs" {
  name              = "/aws/eks/nationwide"
  retention_in_days = 30
}
