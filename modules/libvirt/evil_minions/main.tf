module "evil_minions" {
  source = "../host"

  base_configuration = "${var.base_configuration}"
  name = "${var.name}"
  count = "${var.count}"
  ssh_key_path = "${var.ssh_key_path}"
  grains = <<EOF

product_version: 3.1-released
mirror: ${var.base_configuration["mirror"]}
server: ${var.server_configuration["hostname"]}
role: evil_minions
evil_minion_count: ${var.evil_minion_count}
slowdown_factor: ${var.slowdown_factor}
dump: ${base64encode(file(var.dump_file))}

EOF

  // Provider-specific variables
  image = "sles12sp2"
  memory = "${var.memory}"
  vcpu = "${var.vcpu}"
  running = "${var.running}"
  mac = "${var.mac}"
}

output "configuration" {
  value = "${module.evil_minions.configuration}"
}
