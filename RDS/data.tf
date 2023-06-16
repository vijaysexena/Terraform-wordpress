data "aws_vpc" "vpc_available" {
  filter {
    name   = "tag:Name"
    values = ["vitz_vpc"]
  }
}
data "aws_subnet_ids" "available_db_subnet" {
  vpc_id = data.aws_vpc.vpc_available.id
  filter {
    name   = "tag:Name"
    values = ["vitz_database*"]
  }
}

data "aws_availability_zones" "available" {
  state = "available"
}
