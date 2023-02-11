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

resource "aws_security_group" "allow-mariadb" {
  name        = "allow mariadb"
  description = "sg for mariadb"
  vpc_id      = aws_vpc.levelupvpc.id

  ingress {
    from_port        = 3306
    to_port          = 3306
    protocol         = "tcp"
    security_groups = [aws_security_group.allow-levelup-ssh.id]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  tags = {
    Name = "allow_mariadb"
  }
}