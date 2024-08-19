resource "aws_instance" "us_east_1" {
  provider = aws.us_east_1

  ami           = var.ami_us_east_1
  instance_type = var.instance_type

  tags = {
    Name = "WebServerUS"
  }

  key_name = var.key_name1

  user_data = <<-EOF
              #!/bin/bash
              sudo yum update -y
              sudo amazon-linux-extras install nginx1 -y
              sudo systemctl start nginx
              sudo systemctl enable nginx
              EOF

  provisioner "file" {
    source      = "path/to/your/index.html"
    destination = "/tmp/index.html"

    connection {
      type        = "ssh"
      user        = "ec2-user"
      private_key = file(var.private_key_path1)
      host        = self.public_ip
    }
  }

  provisioner "remote-exec" {
    inline = [
      "sudo mv /tmp/index.html /usr/share/nginx/html/index.html",
      "sudo systemctl restart nginx"
    ]

    connection {
      type        = "ssh"
      user        = "ec2-user"
      private_key = file(var.private_key_path1)
      host        = self.public_ip
    }
  }
}

resource "aws_instance" "ap_south_1" {
  provider = aws.ap_south_1

  ami           = var.ami_ap_south_1
  instance_type = var.instance_type

  tags = {
    Name = "WebServerAP"
  }

  key_name = var.key_name2

  user_data = <<-EOF
              #!/bin/bash
              sudo yum update -y
              sudo amazon-linux-extras install nginx1 -y
              sudo systemctl start nginx
              sudo systemctl enable nginx
              EOF

  provisioner "file" {
    source      = "path/to/your/index.html"
    destination = "/tmp/index.html"

    connection {
      type        = "ssh"
      user        = "ec2-user"
      private_key = file(var.private_key_path2)
      host        = self.public_ip
    }
  }

  provisioner "remote-exec" {
    inline = [
      "sudo mv /tmp/index.html /usr/share/nginx/html/index.html",
      "sudo systemctl restart nginx"
    ]

    connection {
      type        = "ssh"
      user        = "ec2-user"
      private_key = file(var.private_key_path2)
      host        = self.public_ip
    }
  }
}
