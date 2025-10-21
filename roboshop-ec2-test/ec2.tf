module "catalogue" {
  source = "../terraform-aws-instance"

  ami_id= "ami-09c813fb71547fc4f"
  instance_type= "t3.micro"
  vpc_security_group_ids=["sg-0adfe78ec6189cd05"]
  tags = {
    Name= "Modules-Demo"
  }
}

output "pub-ip" {
  value = module.catalogue.public-ip
}

output "priv-ip" {
  value = module.catalogue.private-ip
}

output "instance-id" {
  value = module.catalogue.instance-id
}