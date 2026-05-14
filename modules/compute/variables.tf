variable "project_id" {
  type = string
}

variable "instance_name" {
  type = string
}

variable "zone" {
  type = string
}

variable "machine_type" {
  type = string
}

variable "subnet" {
  type = string
}

variable "network_tags" {
  type = list(string)
}