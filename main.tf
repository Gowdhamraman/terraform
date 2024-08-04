resource "aws_instance" "ec2_east" {
    provider = aws.web_us_east_1
    ami   = var.ami
  instance_type = var.instance_type
  }

resource "aws_instance" "web_us_west_1" {
  provider = aws.us-west-1
  ami           = var.ami
  instance_type = var.instance_type
}


