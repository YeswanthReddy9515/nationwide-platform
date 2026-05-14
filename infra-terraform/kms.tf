
resource "aws_kms_key" "eks_kms" {
  description = "EKS Secrets Encryption"
}
