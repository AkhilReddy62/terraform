# VPC variables
variable "prefix" {
  type= string
  default = "myterraform"
  description = "Name of project prefix created"
}

variable "project" {
  type= string
  default = "myterraform-project"
  description = "Name of project created"
}