# Create IAM group
resource "aws_iam_group" "devops_group" {
  name = "devops-group"
}







resource "aws_iam_user" "bob" {
  name = "bob"
}
resource "aws_iam_user" "Kate" {
  name = "Kate"
}

