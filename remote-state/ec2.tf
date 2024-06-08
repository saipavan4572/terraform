# resource <resource-type> <resource-name>
resource "aws_instance" "db" {

    ami = "ami-031d574cddc5bb371"   # this is the ami id for the devops-practice - RHEL9 AMI.
    vpc_security_group_ids = ["sg-0678bda45dd596a0b"]
    instance_type = "t3.micro"

    tags = {
        Name = "db"
    }
}
