# Install Terraform and Work with Terraform Providers

### Install 
* wget -c https://releases.hashicorp.com/terraform/0.13.4/terraform_0.13.4_linux_amd64.zip
* unzip terraform_0.13.4_linux_amd64.zip
* sudo mv terraform /usr/sbin/
* terraform version

### Work with providers
* mkdir providers
* cd providers/
* vim main.tf 

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

### Deploy code
* export TF_LOG=TRACE
* terraform init
* terraform plan
* terraform apply
* terraform destroy --auto-approve





