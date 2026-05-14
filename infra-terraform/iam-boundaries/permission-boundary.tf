
resource "aws_iam_policy" "permission_boundary" {
  name = "platform-permission-boundary"

  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [{
      Effect = "Deny"
      Action = "*"
      Resource = "*"
      Condition = {
        StringNotEquals = {
          "aws:RequestedRegion" = "us-east-1"
        }
      }
    }]
  })
}
