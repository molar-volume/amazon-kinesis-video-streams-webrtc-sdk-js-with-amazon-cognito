  
# Require TF version to most recent
terraform {
  required_version = "~> 0.12.8"
}

# Download any stable version in AWS provider of 2.19.0 or higher in 2.19 train
provider "aws" {
  version = "~> 2.27.0"
  region  = "us-east-1"
}

resource "aws_db_instance" "mariaDB" {
  allocated_storage    = 1
  storage_type         = "gp2"
  engine               = "mysql"
  engine_version       = "5.7"
  instance_class       = "db.t2.micro"
  name                 = "mydb"
  username             = "foo"
  password             = "foobarbaz"
  parameter_group_name = "default.mysql5.7"
}

resource "aws_kinesis_video_stream" "kvs" {
  name = "kvs"
}

