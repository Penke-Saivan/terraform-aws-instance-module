output "private-ip" {
  value = aws_instance.this.private_ip
}


output "public-ip" {
  value = aws_instance.this.public_ip
}

output "instance-id" {
  value = aws_instance.this.id
}