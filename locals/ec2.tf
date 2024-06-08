# resource <resource-type> <resource-name>
resource "aws_instance" "expense" {

    ami = local.ami_id   # this is the ami id for the devops-practice - RHEL9 AMI.
    vpc_security_group_ids = [local.sg_id]
    #instance_type = "t3.micro"
    #instance_type = var.instance_name == "db" ? "t3.small" : "t3.micro"
    instance_type = local.instance_type
    tags = local.tags
}

