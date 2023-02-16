provider "aws" {
  alias  = "us-east-1"
  region = "us-east-1"
  access_key = "access_key"
  secret_key = "secret key"
}

resource "aws_sns_topic" "topic-us-east" {
  provider = aws.us-east-1
  name     = "topic-us-east"
}
