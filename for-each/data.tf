data "aws_ami" "ami_info" {

    most_recent = true
    owners = ["973714476881"] # owner account ID
    filter {
        name   = "name"        # filter by name
        values = ["RHEL-9-DevOps-Practice"]     # AMI name
    }

    filter {
        name   = "root-device-type"
        values = ["ebs"]
    }

    filter {
        name   = "virtualization-type"
        values = ["hvm"]
    }
}
