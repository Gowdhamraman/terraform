terraform {
required_providers {
aws = {
source  = "hashicorp/aws"
version = "5.61.0"
}
}
}

# Configure the AWS Provider for us-east-1
provider "aws" {
alias  = "us_east_1"
region = "us-east-1"
}

# Configure the AWS Provider for us-west-2
provider "aws" {
alias  = "us_west_2"
region = "us-west-2"
}
