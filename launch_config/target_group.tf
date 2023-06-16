#####################################################################
## AWS Target Group
#####################################################################

resource "aws_lb_target_group" "vitz_tg" {
name = "vitz-tg"
port = 80
protocol = "HTTP"
vpc_id = data.aws_vpc.vpc_available.id
}