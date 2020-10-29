resource "aws_launch_template" "lt_conf" {
    name = "lt_conf"
    image_id = data.aws_ami.amazonlx.id
    instance_type = "t2.micro"
}

//resource "aws_autoscaling_attachment" "elb_attch" {
//autoscaling_group_name = aws_autoscaling_group.testasg.id
//elb = aws_elb.test.id
//}

resource "aws_autoscaling_group" "testasg" {
    availability_zones = ["us-east-1a"]
    name =  "foobar3-terraform-test"
  max_size = 5
  min_size = 2
launch_template {
    id      = aws_launch_template.lt_conf.id
    version = "$Latest"
  }

}