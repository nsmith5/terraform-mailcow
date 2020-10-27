terraform {
  required_version = ">= 0.12"
  required_providers {
    vultr = {
      source  = "vultr/vultr"
      version = "1.4.1"
    }
  }
}

resource "vultr_server" "mailcow" {
  plan_id = "401"
  region_id = "4"

  # Fedora CoreOS
  os_id = "391"

  label = "my-server-label"
  tag = "mailcow"
  hostname = "mx.nfsmith.ca"
  
  user_data = file("${path.module}/ign.json")
  
  enable_ipv6 = true
  auto_backup = true
  ddos_protection = false 
  notify_activate = false
  ssh_key_ids = var.ssh_key_ids
}
