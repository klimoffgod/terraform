terraform {
  pm_log_enable = true
  pm_log_file   = "terraform-plugin-proxmox.log"
  pm_debug      = true
  pm_log_levels = {
    _default    = "debug"
    _capturelog = ""
  }
  required_version = ">= 0.13"
  required_providers {
    proxmox = {
        source = "telmate/proxmox"
    }
  }
}

