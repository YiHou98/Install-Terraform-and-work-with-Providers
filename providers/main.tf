provider "aws" {
  alias  = "us-east-1"
  region = "us-east-1"
  access_key = "AKIATW3OB4632UNWLCLY"
  secret_key = "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"
}

resource "aws_sns_topic" "topic-us-east" {
  provider = aws.us-east-1
  name     = "topic-us-east"
}
