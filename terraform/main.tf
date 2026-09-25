# Security Group
resource "aws_security_group" "monitoring_sg" {
  name        = "monitoring_sg"
  description = "Allow Prometheus and Node Exporter traffic"

  ingress {
    description = "SSH"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    description = "Prometheus"
    from_port   = 9090
    to_port     = 9090
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    description = "Grafana"
    from_port   = 3000
    to_port     = 3000
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    description = "Node Exporter"
    from_port   = 9100
    to_port     = 9100
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "monitoring-sg"
  }
}

# EC2 Instance
resource "aws_instance" "monitoring_node" {
  ami           = "ami-0287a05f0ef0e9d9a" # Ubuntu 22.04 LTS in ap-south-1 (example)
  instance_type = "t2.micro"
  
  vpc_security_group_ids = [aws_security_group.monitoring_sg.id]

  tags = {
    Name = "monitoring-cloud-node"
  }
}
