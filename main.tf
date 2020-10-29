provider "aws" {
  region = "us-east-1"
}


resource "aws_instance" "test" {
  count = 3
  //name = "test${count.index}"
  ami = data.aws_ami.amazonlx.id
  instance_type = var.instance_type
  vpc_security_group_ids = [aws_security_group.testsg.id]
  key_name = var.key_name
  tags = {
    name = "testsg ${count.index}"
    backup = "none"
  }
}


