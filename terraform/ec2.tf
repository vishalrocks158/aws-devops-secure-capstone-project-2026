resource "aws_instance" "devops_server" {
  ami                         = "ami-006f82a1d5a27da54"
  instance_type               = var.instance_type
  subnet_id                   = aws_subnet.public_subnet.id
  vpc_security_group_ids      = [aws_security_group.devops_sg.id]
  key_name                    = var.key_name
  iam_instance_profile        = aws_iam_instance_profile.ec2_profile.name
  associate_public_ip_address = true

  tags = {
    Name        = "DevOps-Server"
    Environment = "Development"
    Project     = "AWS DevSecOps Capstone"
  }
}