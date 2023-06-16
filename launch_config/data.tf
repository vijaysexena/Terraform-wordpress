####################################################################
# Data source
####################################################################

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
    values = ["vitz_public_subnet*"]
  }
}
data "aws_security_group" "vitz_sg" {
  filter {
    name = "tag:Name"
    values = ["vitz_security_group"]
  }
}
data "template_file" "user_data" {
  template = file("./user-data.sh")
}

data "aws_ami" "amazon_linux_2" {
 most_recent = true
 filter {
   name   = "owner-alias"
   values = ["amazon"]
 }
 filter {
   name   = "name"
   values = ["amzn2-ami-hvm*"]
 }
 owners = ["amazon"]
}
