variable "base_configuration" {
  description = "use ${module.base.configuration}, see main.tf.libvirt.example"
  type = "map"
}

variable "name" {
  description = "hostname, without the domain part"
  type = "string"
}

variable "version" {
  description = "One of: 2.1-stable,  2.1-nightly, 3-nightly, 3-stable, head"
  type = "string"
}

variable "database" {
  description = "oracle or postgres for 2.1, postgres or pgpool for 3 and head"
  default = "postgres"
}

variable "iss_master" {
  description = "ISS master server, leave the default for no ISS"
  default = "null"
}

variable "iss_slave" {
  description = "ISS slave server, leave the default for no ISS"
  default = "null"
}

variable "memory" {
  description = "RAM memory in MiB"
  default = 4096
}

variable "vcpu" {
  description = "Number of virtual CPUs"
  default = 2
}

variable "running" {
  description = "Whether this host should be turned on or off"
  default = true
}

variable "mac" {
  description = "a MAC address in the form AA:BB:CC:11:22:22"
  default = ""
}