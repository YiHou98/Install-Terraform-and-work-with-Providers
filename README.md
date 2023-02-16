# Install Terraform and Work with Terraform Providers

## Install 
1. wget -c https://releases.hashicorp.com/terraform/0.13.4/terraform_0.13.4_linux_amd64.zip
2. unzip terraform_0.13.4_linux_amd64.zip
3. sudo mv terraform /usr/sbin/
4. terraform version

## Work with providers
1. mkdir providers
2. cd providers/
3. vim main.tf 
'provider "aws" {
  alias  = "us-east-1"
  region = "us-east-1"
}

provider "aws" {
  alias  = "us-west-2"
  region = "us-west-2"
}


resource "aws_sns_topic" "topic-us-east" {
  provider = aws.us-east-1
  name     = "topic-us-east"
}

resource "aws_sns_topic" "topic-us-west" {
  provider = aws.us-west-2
  name     = "topic-us-west"
}'

## Deploy code
1. export TF_LOG=TRACE
2. terraform init
3. terraform plan
4. terraform apply
5. terraform destroy --auto-approve





