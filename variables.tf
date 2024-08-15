variable "ami_us_east_1" {
  description = "AMI for us-east-1"
 }

variable "ami_us_west_2" {
  description = "AMI for us-west-2"
}

variable "instance_type" {
  description = "The type of instance to create"
  type        = string
}
