module "vpc" {
  source = "./modules/vpc"

  project_name          = var.project_name
  environment           = var.environment
  vpc_cidr              = "10.0.0.0/16"
  public_subnet_cidr    = "10.0.1.0/24"
  private_subnet_cidr   = "10.0.2.0/24"
  private_subnet_cidr_2 = "10.0.3.0/24"
  availability_zone     = "us-east-2a"
  availability_zone_2   = "us-east-2b"
}

module "ec2" {
  source = "./modules/ec2"

  project_name         = var.project_name
  environment          = var.environment
  vpc_id               = module.vpc.vpc_id
  public_subnet_id     = module.vpc.public_subnet_id
  key_name             = var.key_name
  iam_instance_profile = module.iam.instance_profile_name
  my_ip                = var.my_ip
}

module "rds" {
  source = "./modules/rds"

  project_name        = var.project_name
  environment         = var.environment
  vpc_id              = module.vpc.vpc_id
  private_subnet_id   = module.vpc.private_subnet_id
  private_subnet_id_2 = module.vpc.private_subnet_id_2
  web_sg_id           = module.ec2.security_group_id
  db_username         = var.db_username
  db_password         = var.db_password
}

module "s3" {
  source = "./modules/s3"

  project_name = var.project_name
  environment  = var.environment
}

module "iam" {
  source = "./modules/iam"

  project_name  = var.project_name
  environment   = var.environment
  s3_bucket_arn = module.s3.bucket_arn
}