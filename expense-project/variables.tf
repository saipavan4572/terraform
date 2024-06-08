
# ec2 variables
variable "instance_names" {
    type = list
    default = [ "db", "backend", "frontend"]  # index values: 0,1,2
}
variable "image_id" {
  type        = string                  #optional
  default     = "ami-090252cbe067a9e58" #optional
  description = "RHEL-9 AMI ID"         #optional
}
variable "common_tags" {
    default = {
        Project = "Expense"
        Environment = "Dev"
        Terraform = "True"

    }
}

#Security Group(sg) variables
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

#route53 variables
variable "zone_id" {
    default = "Z093373829N4OKOHIDM5S"
}
variable "domain_name" {
    default = "pspkdevops.online"
}