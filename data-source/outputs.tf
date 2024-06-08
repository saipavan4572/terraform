output "ami_id" {
  value = data.aws_ami.ami_id.id    # it will fetch only AMI ID.     + ami_id   = "ami-090252cbe067a9e58"
}

output "vpc_info" {
    value = data.aws_vpc.default
  
}