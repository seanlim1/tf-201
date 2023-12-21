variable "name_prefix" {
  type = string
  # default = "" # to change
}

variable "environment" {
  type    = string
  # default = ""
}

variable "vpc_id" {
  type    = string
  # default = ""
}

variable "public_subnet_id" {
  type    = string
  # default = ""
}

variable "ssh_key_name" {
  type    = string
  # default = ""
}

variable "instance_count" {
  type    = number
  # default = ""
}
