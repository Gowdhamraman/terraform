output "instance_ids" {
  description = "The IDs of the instances"
  value = [
    aws_instance.us_east_1.id,
    aws_instance.ap_south_1.id
  ]
}

output "public_ips" {
  description = "The public IP addresses of the instances"
  value = [
    aws_instance.us_east_1.public_ip,
    aws_instance.ap_south_1.public_ip
  ]
}