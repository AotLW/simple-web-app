# S3 Bucket storing logs

resource "aws_s3_bucket" "simple-web-app-logs" {
  bucket = "danilmalik-simple-web-app-logs"
  acl = "private"
}

# S3 Bucket storing jenkins user data

resource "aws_s3_bucket" "jenkins-config" {
  bucket = "danilmalik-jenkins-config"
  acl = "private"
}