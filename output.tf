output "instance_ids" {
  description = "The IDs of the instances"
  value = [
    aws_instance.us_east_1.id,
    aws_instance.us_west_2.id
  ]
}

output "public_ips" {
  description = "The public IP addresses of the instances"
  value = [
    aws_instance.us_east_1.public_ip,
    aws_instance.us_west_2.public_ip
  ]
}
