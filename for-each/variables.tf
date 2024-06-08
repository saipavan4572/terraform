variable "instance_names" {
    type = map
    default = {
        db = "t3.small"
        backend = "t3.micro"
        frontend = "t3.micro"  
    }
}
variable "common_tags" {
    default = {
        Project = "Expense"
        Environment = "Dev"
        Terraform = "True"

    }
}

#route53 variables
variable "zone_id" {
    default = "Z093373829N4OKOHIDM5S"
}
variable "domain_name" {
    default = "pspkdevops.online"
}