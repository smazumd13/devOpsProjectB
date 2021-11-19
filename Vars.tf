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

variable "acrName" {
    type = string
    default = "myconreg1304"
}

variable "rgroupName" {
    type = string
    default = "projectb-rg"
}

variable "sqlAdminuser" {
    type = string
    description = "Enter username for db admin"
    sensitive = true
}

variable "sqlAdminPass" {
    type = string
    description = "Enter password for db admin"
    sensitive = true
}

variable "dbName" {
    type = string
    default = "smsqldb13"
}

variable "sqlserverName" {
    type = string
    default = "smsqlserv13"
}

variable "clusterPrefix" {
  type = string
  default = "sm"
}