# Terraform AWS Multi-Region EC2 Deployment

This Terraform configuration file launches Linux EC2 instances in two different AWS regions (`us-east-1` and `us-west-2`). This setup demonstrates how to deploy infrastructure across multiple regions using a single Terraform configuration.


## Prerequisites

Before using this configuration, ensure you have the following:

- An AWS account
- Terraform installed on your local machine
- AWS CLI installed and configured with your credentials
- Valid AMI IDs for `us-east-1` and `us-west-2` regions

## Files Overview

- `main.tf`: Contains the main configuration for launching EC2 instances in `us-east-1` and `us-west-2` regions.
- `provider.tf`: Configures the AWS providers for `us-east-1` and `us-west-2` regions.
- `variables.tf`: Defines the input variables used in the Terraform configuration.
- `output.tf`: Specifies the outputs that Terraform will return after the execution.
- `terraform.tfvars`: Contains the values for the input variables, such as AMI IDs and instance types.

## Usage

**Clone the Repository:**

   ```bash
   git clone https://github.com/Gowdhamraman/terraform.git
   cd terraform


The terraform commands and its work flow given in the Output_Porcess_Flow.
