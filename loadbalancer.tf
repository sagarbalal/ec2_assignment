resource "aws_elb" "test"{
    #name = "test_terraform_elb"
    availability_zones = ["us-east-1a","us-east-1b"]
    listener{
        instance_port = 8080
        instance_protocol ="HTTP"
        lb_port = 80
        lb_protocol= "HTTP"

    } 
    health_check{
        healthy_threshold = 5
        unhealthy_threshold = 2
        target = "HTTP:8080/"
        interval = 10
        timeout = 6
    }
    tags = {
        name = "terraform_test_elb"
    }
}

//elastic application load balancer 
/*
# resource "aws_lb" "testlb" {
#   name = "testelb"
#   internal = false
#   load_balancer_type = "application"
#   vpc_security_groups_ids = [aws_security_group.testsg.id]

#   tags = {
#       Name = "elb"
#   }
# }
*/