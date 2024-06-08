locals {
  ami_id = "ami-090252cbe067a9e58"
  sg_id = "sg-0505b4e2b3a31cef0"
  #instance_type = "t3.micro"
  instance_type = var.instance_name == "db" ? "t3.small" : "t3.micro"
  tags = {
        Name = "locals"
    }
}