resource "aws_security_group" "eks_sg" {
  name        = "app_eks_sg"
  description = "Security group for EKS cluster"
  vpc_id      = aws_vpc.app_vpc.id

  ingress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "app_eks_sg"
  }
}
