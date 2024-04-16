resource "aws_instance" "amb-prod" {
  ami = "ami-080e1f13689e07408"
  instance_type = "t2.micro"
  key_name = "Terraform"
  security_groups = ["allow_ssh","allow_http"]
  user_data = file("script.sh")

  tags = {
    Name = "amb-prod"
  }
}
