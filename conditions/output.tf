output "public_ip" {
    #value = aws_instance.db.public_ip
    value = aws_instance.db
}


# sample output result
# aws_instance.db: Creating...
# aws_instance.db: Still creating... [10s elapsed]
# aws_instance.db: Creation complete after 16s [id=i-02a7720764c01a7bd]

# Apply complete! Resources: 1 added, 0 changed, 0 destroyed.

# Outputs:

# public_ip = {
#   "ami" = "ami-090252cbe067a9e58"
#   "arn" = "arn:aws:ec2:us-east-1:533267158693:instance/i-02a7720764c01a7bd"
#   "associate_public_ip_address" = true
#   "availability_zone" = "us-east-1a"
#   "capacity_reservation_specification" = tolist([
#     {
#       "capacity_reservation_preference" = "open"
#       "capacity_reservation_target" = tolist([])
#     },
#   ])
#   "cpu_core_count" = 1
#   "cpu_options" = tolist([
#     {
#       "amd_sev_snp" = ""
#       "core_count" = 1
#       "threads_per_core" = 2
#     },
#   ])
#   "cpu_threads_per_core" = 2
#   "credit_specification" = tolist([
#     {
#       "cpu_credits" = "unlimited"
#     },
#   ])
#   "disable_api_stop" = false
#   "disable_api_termination" = false
#   "ebs_block_device" = toset([])
#   "ebs_optimized" = false
#   "enclave_options" = tolist([
#     {
#       "enabled" = false
#     },
#   ])
#   "ephemeral_block_device" = toset([])
#   "get_password_data" = false
#   "hibernation" = false
#   "host_id" = ""
#   "host_resource_group_arn" = tostring(null)
#   "iam_instance_profile" = ""
#   "id" = "i-02a7720764c01a7bd"
#   "instance_initiated_shutdown_behavior" = "stop"
#   "instance_lifecycle" = ""
#   "instance_market_options" = tolist([])
#   "instance_state" = "running"
#   "instance_type" = "t3.micro"
#   "ipv6_address_count" = 0
#   "ipv6_addresses" = tolist([])
#   "key_name" = ""
#   "launch_template" = tolist([])
#   "maintenance_options" = tolist([
#     {
#       "auto_recovery" = "default"
#     },
#   ])
#   "metadata_options" = tolist([
#     {
#       "http_endpoint" = "enabled"
#       "http_protocol_ipv6" = "disabled"
#       "http_put_response_hop_limit" = 1
#       "http_tokens" = "optional"
#       "instance_metadata_tags" = "disabled"
#     },
#   ])
#   "monitoring" = false
#   "network_interface" = toset([])
#   "outpost_arn" = ""
#   "password_data" = ""
#   "placement_group" = ""
#   "placement_partition_number" = 0
#   "primary_network_interface_id" = "eni-0a3f2296b9f5544d4"
#   "private_dns" = "ip-172-31-38-121.ec2.internal"
#   "private_dns_name_options" = tolist([
#     {
#       "enable_resource_name_dns_a_record" = false
#       "enable_resource_name_dns_aaaa_record" = false
#       "hostname_type" = "ip-name"
#     },
#   ])
#   "private_ip" = "172.31.38.121"
#   "public_dns" = "ec2-3-90-231-146.compute-1.amazonaws.com"
#   "public_ip" = "3.90.231.146"
#   "root_block_device" = tolist([
#     {
#       "delete_on_termination" = true
#       "device_name" = "/dev/sda1"
#       "encrypted" = false
#       "iops" = 3000
#       "kms_key_id" = ""
#       "tags" = tomap({})
#       "tags_all" = tomap({})
#       "throughput" = 125
#       "volume_id" = "vol-0fb7392226ed790e1"
#       "volume_size" = 20
#       "volume_type" = "gp3"
#     },
#   ])
#   "secondary_private_ips" = toset([])
#   "security_groups" = toset([
#     "default",
#   ])
#   "source_dest_check" = true
#   "spot_instance_request_id" = ""
#   "subnet_id" = "subnet-0cee6bd833bb37918"
#   "tags" = tomap(null) /* of string */
#   "tags_all" = tomap({})
#   "tenancy" = "default"
#   "timeouts" = null /* object */
#   "user_data" = tostring(null)
#   "user_data_base64" = tostring(null)
#   "user_data_replace_on_change" = false
#   "volume_tags" = tomap(null) /* of string */
#   "vpc_security_group_ids" = toset([
#     "sg-0678bda45dd596a0b",
#   ])
# }
