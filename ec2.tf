#Create EC2 Instance

resource "aws_instance" "webserver1" {
  ami                    = "ami-0d5eff06f840b45e9"
  instance_type          = "t2.micro"
  availability_zone      = "us-east-1a"
  vpc_security_group_ids = [aws_security_group.webserver-sg.id]
  subnet_id              = aws_subnet.web-subnet-1.id
  user_data              = file("install_apache.sh")
  #key_name              = "${aws_key_pair.generated_key.key_name}"
  key_name = "test-key-pair"
  tags = {
    Name = "Web-Server-1"
  }

}

resource "aws_instance" "webserver2" {
  ami                    = "ami-0d5eff06f840b45e9"
  instance_type          = "t2.micro"
  availability_zone      = "us-east-1b"
  vpc_security_group_ids = [aws_security_group.webserver-sg.id]
  subnet_id              = aws_subnet.web-subnet-2.id
  user_data              = file("install_apache.sh")
  #key_name              = "${aws_key_pair.generated_key.key_name}"
  key_name = "test-key-pair"
  tags = {
    Name = "Web-Server-2"
  }

}

# resource "tls_private_key" "app-key" {
#   algorithm = "RSA"
#   rsa_bits  = 4096
# }

# resource "aws_key_pair" "generated_key" {
#   key_name   = "demo-key"
#   public_key = "${tls_private_key.app-key.public_key_openssh}"
# }

resource "aws_instance" "app-server-1" {
  ami                    = "ami-0d5eff06f840b45e9"
  instance_type          = "t2.micro"
  availability_zone      = "us-east-1a"
  vpc_security_group_ids = [aws_security_group.webserver-sg.id]
  subnet_id              = aws_subnet.app-subnet-1.id
  user_data              = file("mysql.sh")
  #key_name               = "${aws_key_pair.generated_key.key_name}"
  key_name = "test-key-pair"

  tags = {
    Name = "app-Server-1"
  }

}
