variable "location" {
    type = string
    default = "eastus"
    description = "Input the location string for the vm"
}

variable "storageName" {
    type = string
    default = "staccount1304"
}
 
variable "containerName" {
    type = string
    default = "cont1"
}

variable "appName" {
    type = string
    default = "smprojB"
}

variable "rgroupName" {
    type = string
    default = "projectb-rg"
}

variable "clusterPrefix" {
  type = string
  default = "sm"
}