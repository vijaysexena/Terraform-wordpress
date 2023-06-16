**This Terraform configuration allows you to deploy a WordPress website on AWS using RDS for the database and VPC networking for secure communication. It also includes a Bash script for deploying the WordPress application.

## Prerequisites

Before using this Terraform configuration, ensure that you have the following:

Terraform installed on your local machine.
AWS credentials configured on your machine with appropriate permissions to create resources.

## Usage

**Clone this repository to your local machine:-
git clone https://github.com/vijaysexena/Terraform-wordpress.git 


## Update the variables.tf file with your desired configurations and AWS credentials:
Set the aws_region variable to your desired AWS region.
Modify other variables like vpc_cidr_block, subnet_cidr_blocks, db_instance_class, etc., if needed.


## Initialize the Terraform working directory:
terraform init


## Preview the resources that will be created:
terraform plan


## If the plan looks good, apply the Terraform configuration to create the resources:
terraform apply


After the resources are created, you will see the outputs containing the URLs for accessing the WordPress application and the RDS database.

**Use the provided user-data.sh Bash script to deploy WordPress:
./user-data.sh
The script will prompt you for the WordPress database details (database host, name, username, and password). Enter the appropriate values based on the outputs from Terraform.

Once the script completes successfully, you should be able to access your WordPress website using the URL provided in the Terraform outputs.



## Clean Up
## To clean up and destroy the created resources, run the following command
terraform destroy


**Note: Be cautious while running this command, as it will destroy all the resources created by this Terraform configuration. **


## Contributing
If you find any issues with this Terraform configuration or have suggestions for improvements, please feel free to open an issue or submit a pull request.
