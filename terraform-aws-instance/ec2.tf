resource "aws_instance" "this" {
  ami                    = var.ami_id #required
  instance_type          = var.instance_type #required
  vpc_security_group_ids = var.vpc_security_group_ids #required
  tags                   = var.tags
}
