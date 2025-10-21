variable "ami_id" {
  #   default = "ami-09c813fb71547fc4f"
  type = string
}

variable "instance_type" {
  type = string
  #   default = "t3.micro"
}

variable "vpc_security_group_ids" {
  type = list(any)
}

variable "tags" {
  type    = map(any)
  default = {} #making it optional
}
