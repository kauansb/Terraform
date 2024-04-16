resource "aws_security_group" "allow_ssh" {
  name        = "allow_ssh"
  description = "Permitir acesso remoto via porta 22 (ssh)"
  # acesso externo a VM
  ingress { 
    description = "SSH from VPC"
    from_port = 22
    to_port = 22
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
   #necessário para que a vm acesse a internet
   egress { 
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name = "allow_ssh"
  }
}

resource "aws_security_group" "allow_http" {
  name        = "allow_http"
  description = "Permitir acesso via porta 80 (http)"
  # acesso externo a VM
  ingress { 
    description = "HTTP from VPC"
    from_port = 80
    to_port = 80
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "allow_http"
  }
}
