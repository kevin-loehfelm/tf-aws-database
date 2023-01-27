data "terraform_remote_state" "network" {
  backend = "remote"

  config = {
    organization = "kloehfelm-demo"
    workspaces = {
      name = "tf-aws-network"
    }
  }
}

module "db" {
  source = "terraform-aws-modules/rds/aws"

  create_db_instance        = var.create_database
  create_db_subnet_group    = var.create_database
  create_db_option_group    = var.create_database
  create_db_parameter_group = var.create_database

  identifier = "demo-mysql"

  engine               = "mysql"
  major_engine_version = "5.7"
  family               = "mysql5.7"
  engine_version       = "5.7.40"
  instance_class       = "db.m5.large"
  allocated_storage    = 5

  db_name  = "prod"
  username = "dbadmin"
  port     = "3306"

  multi_az = true

  subnet_ids = data.terraform_remote_state.network.outputs.database_subnets

  tags = {
    "env:platform"     = "aws"
    "env:provisioner"  = "Terraform"
    "tfc:organization" = "kloehfelm-demo"
    "tfc:workspace"    = "${terraform.workspace}"
  }
}
