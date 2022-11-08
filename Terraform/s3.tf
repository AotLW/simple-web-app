resource "aws_s3_bucket" "simple-web-app-logs" {
  bucket = "malikdanil-simple-web-app-logs"
  acl = "private"
}

# S3 Bucket storing jenkins user data

resource "aws_s3_bucket" "jenkins-config" {
  bucket = "malikdanil-jenkins-config"
  acl = "private"
}