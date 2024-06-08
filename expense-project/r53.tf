resource "aws_route53_record" "expense" {
  count = length(var.instance_names)
  zone_id = var.zone_id
  #name    = "www.example.com"
  name  = var.instance_names[count.index] == "frontend" ? var.domain_name : "${var.instance_names[count.index]}.${var.domain_name}"
  #name = local.record_name
  
  type    = "A"
  ttl     = 1
  records = var.instance_names[count.index] == "frontend" ? [aws_instance.expense[count.index].public_ip] : [aws_instance.expense[count.index].private_ip]
  #records = local.record_value

  allow_overwrite = true    # it will override the existing route53 records if any
}


### sample output response for terraform apply -auto-approve for this expense-project
/*
instance_info = 
[
  {
    "ami" = "ami-090252cbe067a9e58"
    "arn" = "arn:aws:ec2:us-east-1:533267158693:instance/i-00a40bdb5ed883b7b"
    "associate_public_ip_address" = true
    "availability_zone" = "us-east-1a"
    "capacity_reservation_specification" = tolist([
      {
        "capacity_reservation_preference" = "open"
        "capacity_reservation_target" = tolist([])
      },
    ])
    "cpu_core_count" = 1
    "cpu_options" = tolist([
      {
        "amd_sev_snp" = ""
        "core_count" = 1
        "threads_per_core" = 2
      },
    ])
    "cpu_threads_per_core" = 2
    "credit_specification" = tolist([
      {
        "cpu_credits" = "unlimited"
      },
    ])
    "disable_api_stop" = false
    "disable_api_termination" = false
    "ebs_block_device" = toset([])
    "ebs_optimized" = false
    "enclave_options" = tolist([
      {
        "enabled" = false
      },
    ])
    "ephemeral_block_device" = toset([])
    "get_password_data" = false
    "hibernation" = false
    "host_id" = ""
    "host_resource_group_arn" = tostring(null)
    "iam_instance_profile" = ""
    "id" = "i-00a40bdb5ed883b7b"
    "instance_initiated_shutdown_behavior" = "stop"
    "instance_lifecycle" = ""
    "instance_market_options" = tolist([])
    "instance_state" = "running"
    "instance_type" = "t3.small"
    "ipv6_address_count" = 0
    "ipv6_addresses" = tolist([])
    "key_name" = ""
    "launch_template" = tolist([])
    "maintenance_options" = tolist([
      {
        "auto_recovery" = "default"
      },
    ])
    "metadata_options" = tolist([
      {
        "http_endpoint" = "enabled"
        "http_protocol_ipv6" = "disabled"
        "http_put_response_hop_limit" = 1
        "http_tokens" = "optional"
        "instance_metadata_tags" = "disabled"
      },
    ])
    "monitoring" = false
    "network_interface" = toset([])
    "outpost_arn" = ""
    "password_data" = ""
    "placement_group" = ""
    "placement_partition_number" = 0
    "primary_network_interface_id" = "eni-00e14e1d60d1a1f94"
    "private_dns" = "ip-172-31-39-128.ec2.internal"
    "private_dns_name_options" = tolist([
      {
        "enable_resource_name_dns_a_record" = false
        "enable_resource_name_dns_aaaa_record" = false
        "hostname_type" = "ip-name"
      },
    ])
    "private_ip" = "172.31.39.128"
    "public_dns" = "ec2-54-175-217-119.compute-1.amazonaws.com"
    "public_ip" = "54.175.217.119"
    "root_block_device" = tolist([
      {
        "delete_on_termination" = true
        "device_name" = "/dev/sda1"
        "encrypted" = false
        "iops" = 3000
        "kms_key_id" = ""
        "tags" = tomap({})
        "tags_all" = tomap({})
        "throughput" = 125
        "volume_id" = "vol-0738a3266a1301abe"
        "volume_size" = 20
        "volume_type" = "gp3"
      },
    ])
    "secondary_private_ips" = toset([])
    "security_groups" = toset([
      "allow_ssh",
    ])
    "source_dest_check" = true
    "spot_instance_request_id" = ""
    "subnet_id" = "subnet-0cee6bd833bb37918"
    "tags" = tomap({
      "Environment" = "Dev"
      "Module" = "db"
      "Name" = "db"
      "Project" = "Expense"
      "Terraform" = "True"
    })
    "tags_all" = tomap({
      "Environment" = "Dev"
      "Module" = "db"
      "Name" = "db"
      "Project" = "Expense"
      "Terraform" = "True"
    })
    "tenancy" = "default"
    "timeouts" = null   ****** object ******
    "user_data" = tostring(null)
    "user_data_base64" = tostring(null)
    "user_data_replace_on_change" = false
    "volume_tags" = tomap(null) ****** of string ********
    "vpc_security_group_ids" = toset([
      "sg-032efc602f9719853",
    ])
  },
  {
    "ami" = "ami-090252cbe067a9e58"
    "arn" = "arn:aws:ec2:us-east-1:533267158693:instance/i-001f0f57b3691d5ec"
    "associate_public_ip_address" = true
    "availability_zone" = "us-east-1a"
    "capacity_reservation_specification" = tolist([
      {
        "capacity_reservation_preference" = "open"
        "capacity_reservation_target" = tolist([])
      },
    ])
    "cpu_core_count" = 1
    "cpu_options" = tolist([
      {
        "amd_sev_snp" = ""
        "core_count" = 1
        "threads_per_core" = 2
      },
    ])
    "cpu_threads_per_core" = 2
    "credit_specification" = tolist([
      {
        "cpu_credits" = "unlimited"
      },
    ])
    "disable_api_stop" = false
    "disable_api_termination" = false
    "ebs_block_device" = toset([])
    "ebs_optimized" = false
    "enclave_options" = tolist([
      {
        "enabled" = false
      },
    ])
    "ephemeral_block_device" = toset([])
    "get_password_data" = false
    "hibernation" = false
    "host_id" = ""
    "host_resource_group_arn" = tostring(null)
    "iam_instance_profile" = ""
    "id" = "i-001f0f57b3691d5ec"
    "instance_initiated_shutdown_behavior" = "stop"
    "instance_lifecycle" = ""
    "instance_market_options" = tolist([])
    "instance_state" = "running"
    "instance_type" = "t3.micro"
    "ipv6_address_count" = 0
    "ipv6_addresses" = tolist([])
    "key_name" = ""
    "launch_template" = tolist([])
    "maintenance_options" = tolist([
      {
        "auto_recovery" = "default"
      },
    ])
    "metadata_options" = tolist([
      {
        "http_endpoint" = "enabled"
        "http_protocol_ipv6" = "disabled"
        "http_put_response_hop_limit" = 1
        "http_tokens" = "optional"
        "instance_metadata_tags" = "disabled"
      },
    ])
    "monitoring" = false
    "network_interface" = toset([])
    "outpost_arn" = ""
    "password_data" = ""
    "placement_group" = ""
    "placement_partition_number" = 0
    "primary_network_interface_id" = "eni-0363a1743ee5df3ee"
    "private_dns" = "ip-172-31-35-86.ec2.internal"
    "private_dns_name_options" = tolist([
      {
        "enable_resource_name_dns_a_record" = false
        "enable_resource_name_dns_aaaa_record" = false
        "hostname_type" = "ip-name"
      },
    ])
    "private_ip" = "172.31.35.86"
    "public_dns" = "ec2-54-224-98-37.compute-1.amazonaws.com"
    "public_ip" = "54.224.98.37"
    "root_block_device" = tolist([
      {
        "delete_on_termination" = true
        "device_name" = "/dev/sda1"
        "encrypted" = false
        "iops" = 3000
        "kms_key_id" = ""
        "tags" = tomap({})
        "tags_all" = tomap({})
        "throughput" = 125
        "volume_id" = "vol-06d72d6c02f044577"
        "volume_size" = 20
        "volume_type" = "gp3"
      },
    ])
    "secondary_private_ips" = toset([])
    "security_groups" = toset([
      "allow_ssh",
    ])
    "source_dest_check" = true
    "spot_instance_request_id" = ""
    "subnet_id" = "subnet-0cee6bd833bb37918"
    "tags" = tomap({
      "Environment" = "Dev"
      "Module" = "backend"
      "Name" = "backend"
      "Project" = "Expense"
      "Terraform" = "True"
    })
    "tags_all" = tomap({
      "Environment" = "Dev"
      "Module" = "backend"
      "Name" = "backend"
      "Project" = "Expense"
      "Terraform" = "True"
    })
    "tenancy" = "default"
    "timeouts" = null ****** object ******
    "user_data" = tostring(null)
    "user_data_base64" = tostring(null)
    "user_data_replace_on_change" = false
    "volume_tags" = tomap(null) ****** of string ******
    "vpc_security_group_ids" = toset([
      "sg-032efc602f9719853",
    ])
  },
  {
    "ami" = "ami-090252cbe067a9e58"
    "arn" = "arn:aws:ec2:us-east-1:533267158693:instance/i-0b0a5b3d1fbb46cc7"
    "associate_public_ip_address" = true
    "availability_zone" = "us-east-1a"
    "capacity_reservation_specification" = tolist([
      {
        "capacity_reservation_preference" = "open"
        "capacity_reservation_target" = tolist([])
      },
    ])
    "cpu_core_count" = 1
    "cpu_options" = tolist([
      {
        "amd_sev_snp" = ""
        "core_count" = 1
        "threads_per_core" = 2
      },
    ])
    "cpu_threads_per_core" = 2
    "credit_specification" = tolist([
      {
        "cpu_credits" = "unlimited"
      },
    ])
    "disable_api_stop" = false
    "disable_api_termination" = false
    "ebs_block_device" = toset([])
    "ebs_optimized" = false
    "enclave_options" = tolist([
      {
        "enabled" = false
      },
    ])
    "ephemeral_block_device" = toset([])
    "get_password_data" = false
    "hibernation" = false
    "host_id" = ""
    "host_resource_group_arn" = tostring(null)
    "iam_instance_profile" = ""
    "id" = "i-0b0a5b3d1fbb46cc7"
    "instance_initiated_shutdown_behavior" = "stop"
    "instance_lifecycle" = ""
    "instance_market_options" = tolist([])
    "instance_state" = "running"
    "instance_type" = "t3.micro"
    "ipv6_address_count" = 0
    "ipv6_addresses" = tolist([])
    "key_name" = ""
    "launch_template" = tolist([])
    "maintenance_options" = tolist([
      {
        "auto_recovery" = "default"
      },
    ])
    "metadata_options" = tolist([
      {
        "http_endpoint" = "enabled"
        "http_protocol_ipv6" = "disabled"
        "http_put_response_hop_limit" = 1
        "http_tokens" = "optional"
        "instance_metadata_tags" = "disabled"
      },
    ])
    "monitoring" = false
    "network_interface" = toset([])
    "outpost_arn" = ""
    "password_data" = ""
    "placement_group" = ""
    "placement_partition_number" = 0
    "primary_network_interface_id" = "eni-0d5765acb4a8b321c"
    "private_dns" = "ip-172-31-36-157.ec2.internal"
    "private_dns_name_options" = tolist([
      {
        "enable_resource_name_dns_a_record" = false
        "enable_resource_name_dns_aaaa_record" = false
        "hostname_type" = "ip-name"
      },
    ])
    "private_ip" = "172.31.36.157"
    "public_dns" = "ec2-35-175-238-27.compute-1.amazonaws.com"
    "public_ip" = "35.175.238.27"
    "root_block_device" = tolist([
      {
        "delete_on_termination" = true
        "device_name" = "/dev/sda1"
        "encrypted" = false
        "iops" = 3000
        "kms_key_id" = ""
        "tags" = tomap({})
        "tags_all" = tomap({})
        "throughput" = 125
        "volume_id" = "vol-075669db9cc807b92"
        "volume_size" = 20
        "volume_type" = "gp3"
      },
    ])
    "secondary_private_ips" = toset([])
    "security_groups" = toset([
      "allow_ssh",
    ])
    "source_dest_check" = true
    "spot_instance_request_id" = ""
    "subnet_id" = "subnet-0cee6bd833bb37918"
    "tags" = tomap({
      "Environment" = "Dev"
      "Module" = "frontend"
      "Name" = "frontend"
      "Project" = "Expense"
      "Terraform" = "True"
    })
    "tags_all" = tomap({
      "Environment" = "Dev"
      "Module" = "frontend"
      "Name" = "frontend"
      "Project" = "Expense"
      "Terraform" = "True"
    })
    "tenancy" = "default"
    "timeouts" = null ****** object ******
    "user_data" = tostring(null)
    "user_data_base64" = tostring(null)
    "user_data_replace_on_change" = false
    "volume_tags" = tomap(null) ****** of string ******
    "vpc_security_group_ids" = toset([
      "sg-032efc602f9719853",
    ])
  },
]
*/