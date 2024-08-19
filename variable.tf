variable "instance_type" {
  description = "Type of the instance"
  default     = "t2.micro"
}

variable "key_name1" {
  description = "SSH key name to use for the instances"
  default     = "your-key-name"
}

variable "key_name2" {
  description = "SSH key name to use for the instances"
  default     = "your-key-name"
}

variable "ami_us_east_1" {
  description = "AMI ID for us-east-1"
  default     = "ami-0c02fb55956c7d316"
}

variable "ami_ap_south_1" {
  description = "AMI ID for ap_south_1"
  default     = "ami-0c55b159cbfafe1f0"
}

variable "private_key_path1" {
  description = "Path to the us-east-1 private key for SSH"
  default     = "/path/to/your/private-key.pem"
}

variable "private_key_path2" {
  description = "Path to the ap_south_1 private key for SSH"
  default     = "/path/to/your/private-key.pem"
}
