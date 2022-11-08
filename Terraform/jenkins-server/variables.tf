variable "ami-id" {
type = string
}

variable "iam-instance-profile" {
  default = ""
  type    = string
}

variable "instance-type" {
  type    = string
  default = "t2.micro"
}

variable "name" {
  type = string
}

variable "key-pair" {
  type = string
}

variable "network-interface-id" {
  type = string
}

variable "device-index" {
  type = string
}

variable "repository-url" {
  type = string
}

variable "admin-username" {
  type = string
}

variable "admin-password" {
  type = string
}

variable "admin-fullname" {
  type = string
}

variable "admin-email" {
  type = string
}

variable "remote-repo" {
  type = string
}

variable "job-name" {
  type = string
}

variable "secrets" {
  type = map(string)
}