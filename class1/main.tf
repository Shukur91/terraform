# Create IAM group
resource "aws_iam_group" "devops_group" {
  name = "devops-group"
}

# Create IAM users
resource "aws_iam_user" "bob" {
  name = "bob"
}

resource "aws_iam_user" "kate" {
  name = "kate"
}

# Add users to the IAM group
resource "aws_iam_group_membership" "devops_group_membership" {
  name  = "devops-group-membership"
  group = aws_iam_group.devops_group.name

  users = [aws_iam_user.bob.name, aws_iam_user.kate.name]
}


# Upload an existing public SSH key to AWS
resource "aws_key_pair" "example_key" {
  key_name   = "example-key"
  public_key = file("~/.ssh/id_rsa.pub") # Path to your public key file
}

# Create an S3 bucket
resource "aws_s3_bucket" "example" {
  bucket_prefix = "my-tf-test-bucket"
}

# OPTIONAL: Another IAM group and membership (if "adminsssssss" exists)
resource "aws_iam_group" "admin_group" {
  name = "adminsssssss"
}

resource "aws_iam_group_membership" "team" {
  name  = "admin-group-membership"
  group = aws_iam_group.admin_group.name
  users = [aws_iam_user.bob.name, aws_iam_user.kate.name]
}
