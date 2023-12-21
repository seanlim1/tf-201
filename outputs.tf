output "ssh_public_ip" {
  value = module.sshinstance.ssh_public_ip
}

output "webapp_public_ip" {
  value = aws_instance.webapp[*].public_ip
}
