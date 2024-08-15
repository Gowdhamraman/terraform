resource "aws_instance" "us_east_1" {
    provider = aws.us_east_1
    ami   = var.ami_us_east_1
  instance_type = var.instance_type
  tags = {
    Name = "Server_us_east_1"
  }
  }

resource "aws_instance" "us_west_2" {
  provider = aws.us_west_2
  ami           = var.ami_us_west_2
  instance_type = var.instance_type
  tags = {
    Name = "Server_us_west_2"
  }
}
