resource "aws_security_group" "testsg" {
  name = "testsg"
  description = "allow HTTP traffic"
  ingress{
    from_port = 80
    to_port = 80
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  tags = {
    Name = "testsg"
  }
}
