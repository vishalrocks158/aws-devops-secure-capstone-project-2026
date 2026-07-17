resource "aws_instance" "devops_server" {
  ami                         = "ami-006f82a1d5a27da54"
  instance_type               = var.instance_type
  subnet_id                   = aws_subnet.public_subnet.id
  vpc_security_group_ids      = [aws_security_group.devops_sg.id]
  key_name                    = var.key_name
  iam_instance_profile        = aws_iam_instance_profile.ec2_profile.name
  associate_public_ip_address = true

  # Enable detailed CloudWatch monitoring
  monitoring = true

  # Enable EBS optimization
  ebs_optimized = true

  # Enforce Instance Metadata Service Version 2 (IMDSv2)
  metadata_options {
    http_endpoint = "enabled"
    http_tokens   = "required"
  }

  # Encrypt root EBS volume
  root_block_device {
    encrypted   = true
    volume_type = "gp3"
  }

  tags = {
    Name        = "DevOps-Server"
    Environment = "Development"
    Project     = "AWS DevSecOps Capstone"
  }
}