
resource "aws_db_parameter_group" "totem" {
  name   = "totem"
  family = "postgres15"

  parameter {
    name  = "log_connections"
    value = "1"
  }
}

resource "aws_db_instance" "totem" {
  identifier             = "totem"
  instance_class         = "db.t3.micro"
  allocated_storage      = 5
  engine                 = "postgres"
  username               = var.username
  password               = var.password
  db_subnet_group_name   = aws_db_subnet_group.totem.name
  vpc_security_group_ids = [aws_security_group.rds.id]
  parameter_group_name   = aws_db_parameter_group.totem.name
  publicly_accessible    = true
  skip_final_snapshot    = true
}
