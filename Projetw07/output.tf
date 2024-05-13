output "public-ip" {
  value = aws_instance.splunk-sg.public_ip

}

output "vpc_id" {
  value = aws_vpc.projet07.id

}

