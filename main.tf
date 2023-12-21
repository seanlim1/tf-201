module "sshinstance" {
  source = "./modules/sshinstances"

  name_prefix = var.name_prefix
  environment = var.environment
  vpc_id = var.vpc_id
  public_subnet_id = var.public_subnet_id
  ssh_key_name = var.ssh_key_name
  instance_count = 1
}

resource "aws_instance" "webapp" {
  count                  = var.enable_webapp ? 1 : 0
  ami                    = data.aws_ami.amazon_linux.id
  instance_type          = "t3.micro"
  subnet_id              = var.public_subnet_id
  vpc_security_group_ids = [aws_security_group.allow_http.id]

  user_data = file("${path.module}/init.sh")
  user_data_replace_on_change = true

  tags = {
    Name        = "${var.name_prefix}-webapp-${count.index}"
    Environment = var.environment
  }
}
