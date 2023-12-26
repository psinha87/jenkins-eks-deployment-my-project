variable "ap-availability-zones" {
    type = list(string)
    default = ["ap-south-1a","ap-south-1b","ap-south-1c"]
}
variable "vpc-cidr" {
    default = "10.0.0.0/16"
}
variable "public-subnet-cidr" {
    default = ["10.0.1.0/24","10.0.2.0/24","10.0.3.0/24"]
}
variable "private-subnet-cidr" {
    default = ["10.0.4.0/24","10.0.5.0/24","10.0.6.0/24"]
}

