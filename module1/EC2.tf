#creating EC2

# EC2 instances in public subnet

resource "aws_instance" "website-instance" {
  ami                         = var.ami_id
  instance_type               = var.instance_type
  associate_public_ip_address = true
  vpc_security_group_ids      = [aws_security_group.website-SG.id]
  subnet_id                   = aws_subnet.web-public-subnet1.id
  count                       = var.instance_per_subnet

  tags = {
    Name = "website-instance-${count.index + 1}"
  }
}




#EC2 instances in private subnet

resource "aws_instance" "website-private-instance" {
  ami                         = var.ami_id
  instance_type               = var.instance_type
  associate_public_ip_address = true
  vpc_security_group_ids      = [aws_security_group.website-SG.id]
  subnet_id                   = aws_subnet.app-private-subnet1.id
  count                       = var.instance_per_subnet


  tags = {
    Name = "website-private-instance-${count.index + 1}"
  }
}