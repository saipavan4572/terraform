# resource <resource-type> <resource-name>
resource "aws_instance" "db" {

    ami = var.image_id   # this is the ami id for the devops-practice - RHEL9 AMI.
    #vpc_security_group_ids = [aws_security_group.allow_ssh.id]
    # aws will take default security group.
    instance_type = var.instance_name == "db" ? "t3.small" : "t3.micro"

}

