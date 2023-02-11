resource "aws_security_group" "allow-levelup-ssh" {
  name        = "allow_levelup-ssh"
  description = "sg allows ssh connection"
  vpc_id      = aws_vpc.levelupvpc.id

  ingress {
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  tags = {
    Name = "allow_levelup-ssh"
  }
}