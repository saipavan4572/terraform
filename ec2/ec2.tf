# resource <resource-type> <resource-name>
resource "aws_instance" "ec2" {

    ## ami = "ami-090252cbe067a9e58"   # this is the ami id for the devops-practice - RHEL9 AMI.
    ami                    = "ami-09c813fb71547fc4f"    # new AMI id during 82s-batch
    vpc_security_group_ids = [aws_security_group.allow_ssh.id]
    //instance_type = "t3.micro"
    instance_type = "t2.micro"      # updating the changes on top of already applied infra using terraform.

    tags = {
        Name = "ec2"
    }
}

resource "aws_security_group" "allow_ssh" {
    name = "allow_ssh"
    description = "allowing SSH access"

    #terraform block
    ingress {
        from_port        = 22
        to_port          = 22
        protocol         = "tcp"
        cidr_blocks      = ["0.0.0.0/0"]
    }

    egress {
        from_port        = 0 # from 0 to 0 means, opening all protocols
        to_port          = 0
        protocol         = "-1" # -1 all protocols
        cidr_blocks      = ["0.0.0.0/0"]
    }

    tags = {
        Name = "allow_ssh"
        CreatedBy = "PSPK"
    }
}
