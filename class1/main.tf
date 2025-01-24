# Create IAM group
resource "aws_iam_group" "devops_group" {
  name = "devops-group"
}

# Add 'bob' to the group
resource "aws_iam_group_membership" "devops_group_membership" {
  name  = "devops-group-membership"
  group = aws_iam_group.devops_group.name

  users = [
    aws_iam_user.bob.name,
    aws_iam_user.kate.name
  ]
}


resource "aws_iam_user" "bob" {
  name = "bob"
}
resource "aws_iam_user" "kate" {
  name = "Kate"
}

resource "aws_iam_group_policy_attachment" "devops_group_policy" {
  group      = aws_iam_group.devops_group.name
  policy_arn = "arn:aws:iam::aws:policy/AdministratorAccess"
}

