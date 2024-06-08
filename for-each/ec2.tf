# resource <resource-type> <resource-name>
resource "aws_instance" "expense" {

    for_each = var.instance_names  # each.key and each.value
    #ami = "ami-031d574cddc5bb371"   # this is the ami id for the devops-practice - RHEL9 AMI.
    ami = data.aws_ami.ami_info.id
    vpc_security_group_ids = ["sg-0678bda45dd596a0b"]
    instance_type = each.value

    tags = merge(
        var.common_tags,
        {
            Name = each.key
            Module = each.key
        }
    )
}
