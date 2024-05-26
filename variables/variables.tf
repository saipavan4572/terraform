## Preference of arguments
#1. command line
#2. tfvars
#3. ENV variable
#4. variable default value
variable "image_id" {
  type        = string                  #optional
  default     = "ami-090252cbe067a9e58" #optional
  description = "RHEL-9 AMI ID"         #optional
}

## if we didn't provide the default value for image_id then terraform will prompt like below for input while executing terraform plan
        # $ terraform plan
        # var.image_id
        #   RHEL-9 AMI ID
        #   Enter a value:

variable "instance_type" {
    default = "t3.micro"
    type = string
}

variable "tags" {
    default = {
        Project = "Expense"
        Environment = "Dev"
        Module = "DB"
        Name = "DB"
    }
}

variable "sg_name" {
    default = "allow_ssh"
}

variable "sg_description" {
    default = "allowing port 22"
}

variable "ssh_port" {
    default = 22
}

variable "protocol" {
    default = "tcp"
}

variable "allowed_cidr" {

    type = list(string)     #optional
    default = ["0.0.0.0/0"]
}


### whenever we provide the variable like below and run the terraform plan then,
    # variable "allowed_cidr" {
    #  default = "0.0.0.0/0"
    # }
# the output response will be an error messgae as below...    
# Planning failed. Terraform encountered an error while generating this plan.

# ╷
# │ Error: Incorrect attribute value type
# │
# │   on ec2.tf line 21, in resource "aws_security_group" "allow_ssh":
# │   21:         cidr_blocks      = var.allowed_cidr
# │     ├────────────────
# │     │ var.allowed_cidr is "0.0.0.0/0"
# │
# │ Inappropriate value for attribute "cidr_blocks": list of string required.