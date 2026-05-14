
resource "aws_efs_file_system" "etl_efs" {
  creation_token = "nationwide-efs"
}
