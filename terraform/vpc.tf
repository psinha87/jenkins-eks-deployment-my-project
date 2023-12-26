provider "aws" {
    region = "ap-south-1"
}
module "project-vpc"{
    source = "terraform-aws-modules/vpc/aws"
    version = "3.19.0"
    name = "project-vpc"
    cidr = var.vpc-cidr
    private_subnets = var.private-subnet-cidr
    public_subnets = var.public-subnet-cidr
    availability_zone = var.ap-availability-zones
    enable_nat_gateway   = true
    single_nat_gateway   = true
    enable_dns_hostnames = true
    tags = {
    "kubernetes.io/cluster/myapp-eks-cluster" = "shared"
  }

  public_subnet_tags = {
    "kubernetes.io/cluster/myapp-eks-cluster" = "shared"
    "kubernetes.io/role/elb"                  = 1
  }

  private_subnet_tags = {
    "kubernetes.io/cluster/myapp-eks-cluster" = "shared"
    "kubernetes.io/role/internal-elb"         = 1
  }
}