terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.51.1"
    }
  }

  backend "s3" {
    bucket = "pspkdevops-terraform-remote-state"    #bucketname created in aws
    key    = "remote-state-demo"     #key we can give any name but should be unique to application/project
    region = "us-east-1"
    dynamodb_table = "pspkdevops-terraform-lock"    # Dynamo db table name in aws
  }

}
# to provide authentication.
provider "aws" {
  region = "us-east-1"
}

## sample output result when run terraform init command

# $ terraform init

# Initializing the backend...

# Successfully configured the backend "s3"! Terraform will automatically
# use this backend unless the backend configuration changes.

# Initializing provider plugins...
# - Finding hashicorp/aws versions matching "5.51.1"...
# - Installing hashicorp/aws v5.51.1...
# - Installed hashicorp/aws v5.51.1 (signed by HashiCorp)

# Terraform has created a lock file .terraform.lock.hcl to record the provider
# selections it made above. Include this file in your version control repository
# so that Terraform can guarantee to make the same selections by default when
# you run "terraform init" in the future.

# Terraform has been successfully initialized!

# You may now begin working with Terraform. Try running "terraform plan" to see
# any changes that are required for your infrastructure. All Terraform commands
# should now work.

# If you ever set or change modules or backend configuration for Terraform,
# rerun this command to reinitialize your working directory. If you forget, other
# commands will detect it and remind you to do so if necessary.
