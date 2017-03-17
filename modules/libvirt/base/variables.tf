variable "cc_username" {
  description = "username for the Customer Center"
  type = "string"
}

variable "cc_password" {
  description = "password for the Customer Center"
  type = "string"
}

variable "timezone" {
  description = "Timezone setting for all VMs"
  default = "Europe/Berlin"
}

variable "ssh_key_path" {
  description = "path of pub ssh key you want to use to access VMs, see libvirt/README.md"
  default = "~/.ssh/id_rsa.pub"
}

variable "package_mirror" {
  description = "hostname of the package mirror or leave the default for no package mirror"
  default = "null"
}

variable "pool" {
  description = "libvirt storage pool name for VM disks"
  default = "default"
}

variable "network_name" {
  description = "libvirt NAT network name for VMs, use empty string for bridged networking"
  default = "default"
}

variable "bridge" {
  description = "a bridge device name available on the libvirt host, leave default for NAT"
  default = ""
}

variable "use_avahi" {
  description = "use false only if you use bridged networking with static MACs and an external DHCP"
  default = true
}

variable "domain" {
  description = "hostname's domain"
  default = "tf.local"
}

variable "name_prefix" {
  description = "a prefix for all names of objects to avoid collisions. Eg. moio-"
  default = ""
}

variable "create_all_images"{
  description = "This variable if true will create all images avaible. Otherwise we create images for 12sp1 12sp2 and centos7 only."
  default = false
}
