resource "aws_instance" "multistage_ec2" {
  ami = var.ami_id
  instance_type = var.instance_type
  tags = {
   Name = "${var.env_name}-demo-app"
  }
}
