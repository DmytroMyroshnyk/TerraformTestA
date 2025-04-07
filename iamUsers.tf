resource "aws_iam_user" "readonly_user" {
  name = "IAMwithReadOnlyAccess"
  path = "/"
}

resource "aws_iam_policy_attachment" "readonly_attach" {
  name       = "attach-readonly-policy"
  users      = [aws_iam_user.readonly_user.name]
  policy_arn = "arn:aws:iam::aws:policy/ReadOnlyAccess"
}

resource "aws_iam_user" "wordpress_admin" {
  name = "wp-admin-user"
  path = "/"
}

resource "aws_iam_policy_attachment" "wp_admin_attach" {
  name       = "attach-readonly-policy-wp-admin"
  users      = [aws_iam_user.wordpress_admin.name]
  policy_arn = "arn:aws:iam::aws:policy/ReadOnlyAccess"
}

resource "aws_iam_role" "ssm_role" {
  name = "ssm-role"
  assume_role_policy = jsonencode({
    Version = "2012-10-17",
    Statement = [{
      Action = "sts:AssumeRole",
      Effect = "Allow",
      Principal = { Service = "ec2.amazonaws.com" }
    }]
  })
}

resource "aws_iam_role_policy_attachment" "ssm_policy" {
  role       = aws_iam_role.ssm_role.name
  policy_arn = "arn:aws:iam::aws:policy/AmazonSSMManagedInstanceCore"
}

resource "aws_iam_instance_profile" "ssm_profile" {
  name = "ssm-profile"
  role = aws_iam_role.ssm_role.name
}