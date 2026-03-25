resource "aws_security_group" "web_sg" {
  name        = "web-sg"
  description = "Allow SSH and HTTP"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_instance" "devops_ec2" {
  ami           = "ami-0f5ee92e2d63afc18"
  instance_type = "t2.micro"

  security_groups = [aws_security_group.web_sg.name]

  user_data = <<-EOF
#!/bin/bash
sudo apt update -y
sudo apt install nginx -y
echo "Hello from Terraform DevOps Project" > /var/www/html/index.html
sudo systemctl restart nginx
EOF

  tags = {
    Name = "DevOps-Upscaled-EC2"
  }
}