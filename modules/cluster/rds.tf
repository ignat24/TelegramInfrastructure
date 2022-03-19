resource "aws_db_instance" "rds" {
  allocated_storage    = 10
  storage_type         = "gp2"
  engine               = "postgres"
  engine_version       = "13.4"
  instance_class       = "db.t2.micro"
  name                 = "rds_bot"
  username             = "admin"
  password             = aws_ssm_parameter.secret
  parameter_group_name = "default.mysql5.7"
}


resource "aws_ssm_parameter" "secret" {
  name        = "/production/database/password/master"
  description = "Database master password"
  type        = "SecureString"
  value       = "12345678"

}