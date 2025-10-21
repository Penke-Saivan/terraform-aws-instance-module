variable "ami_id" {
  #   default = "ami-09c813fb71547fc4f"
  type = string
}

variable "instance_type" {
  type = string
  #   default = "t3.micro"
  validation {
    condition     = contains(["t3.micro", "t3,small", "t3,medium"], var.instance_type)
    error_message = "instance type should be any one of them -t3.micro, t3,small, t3,medium"
  }

}

variable "vpc_security_group_ids" {
  type = list(any)
}

variable "tags" {
  type    = map(any)
  default = {} #making it optional
}
