resource "aws_eks_cluster" "app_cluster" {
  name     = "app-cluster"
  role_arn = aws_iam_role.eks_cluster_role.arn

  vpc_config {
    subnet_ids = [aws_subnet.app_subnet.id]
  }

  depends_on = [
    aws_iam_role_policy_attachment.eks_cluster_policy_attachment
  ]
}

resource "aws_iam_role" "eks_cluster_role" {
  name = "app_cluster_role"

  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action = "sts:AssumeRole"
        Effect = "Allow"
        Principal = {
          Service = "eks.amazonaws.com"
        }
      },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "eks_cluster_policy_attachment" {
  role       = aws_iam_role.eks_cluster_role.name
  policy_arn = "arn:aws:iam::aws:policy/AmazonEKSClusterPolicy"
}
