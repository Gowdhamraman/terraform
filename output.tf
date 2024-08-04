output "instance_ids" {
  description = "The IDs of the instances"
  value = [
    aws_instance.web_us_east_1.id,
    aws_instance.web_us_west_1.id
  ]
}

output "public_ips" {
  description = "The public IP addresses of the instances"
  value = [
    aws_instance.web_us_east_1.public_ip,
    aws_instance.web_us_west_1.public_ip
  ]
}
