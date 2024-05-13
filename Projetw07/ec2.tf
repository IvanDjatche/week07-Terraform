## Ec2 instance 

resource "aws_instance" "splunk-sg" {
  ami                    = "ami-0bb4c991fa89d4b9b"
  vpc_security_group_ids = [aws_security_group.splunk-sg.id]
  instance_type          = "t2.small"
  key_name               = "splunk-demo"
  subnet_id              = aws_subnet.public_subnet1.id
  user_data              = file("setup.sh")

  root_block_device {
    volume_size = 25 # Change this to the desired size
    volume_type = "gp2"
  }

  tags = {
    Name = "splunk-sg-inst"
    env  = "Dev"
  }

}