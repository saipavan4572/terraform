# resource <resource-type> <resource-name>
resource "aws_instance" "expense" {

    #count = 3   # this count variable is used to create no.of ec2 instances statically
    count = length(var.instance_names)  # to get the list of instance_names variable type defined in variables.tf file
    ami = var.image_id
    vpc_security_group_ids = [aws_security_group.allow_ssh.id]
    instance_type = var.instance_names[count.index] == "db" ? "t3.small" : "t3.micro"

    tags = merge(
        var.common_tags,
        {
            Name = var.instance_names[count.index]
            Module = var.instance_names[count.index]
        }
    )
        # list1 --> a=b, b=c, c=d
        # list2 --> x=z, e=f, a=e
        # merge list --> a=e, b=c, c=d, x=z, e=f
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
