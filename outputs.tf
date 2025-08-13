output "anti_brute_force_rule" {
  value = {
    for a in alicloud_threat_detection_anti_brute_force_rule.this : a => {
      id = a.id
    }
  }
}
output "asset_bind" {
  value = {
    for a in alicloud_threat_detection_asset_bind.this : a => {
      id = a.id
    }
  }
}
output "asset_selection_config" {
  value = {
    for a in alicloud_threat_detection_asset_selection_config.this : a => {
      id = a.id
    }
  }
}

output "backup_policy" {
  value = {
    for a in alicloud_threat_detection_backup_policy.this : a => {
      id     = a.id
      status = a.status
    }
  }
}

output "alicloud_threat_detection_baseline_strategy" {
  value = {
    for a in alicloud_threat_detection_baseline_strategy.this : a => {
      id                   = a.id
      baseline_strategy_id = a.baseline_strategy_id
    }
  }
}

output "alicloud_threat_detection_client_file_protect" {
  value = {
    for a in alicloud_threat_detection_client_file_protect.this : a => {
      id = a.id
    }
  }
}

output "client_user_define_rule" {
  value = {
    for a in alicloud_threat_detection_client_user_define_rule.this : a => {
      id          = a.id
      create_time = a.create_time
    }
  }
}

output "file_upload_limit" {
  value = {
    for a in alicloud_threat_detection_file_upload_limit.this : a => {
      id    = a.id
      limit = a.limit
    }
  }
}

output "honeypot_node" {
  value = {
    for a in alicloud_threat_detection_honeypot_node.this : a => {
      id          = a.id
      create_time = a.create_time
      status      = a.status
    }
  }
}

output "honey_pot" {
  value = {
    for a in alicloud_threat_detection_honey_pot.this : a => {
      id          = a.id
      honeypot_id = a.honeypot_id
      preset_id   = a.preset_id
      state       = a.state
      status      = a.status
    }
  }
}

output "honeypot_preset" {
  value = {
    for a in alicloud_threat_detection_honeypot_preset.this : a => {
      id                 = a.id
      honeypot_preset_id = a.honeypot_preset_id
    }
  }
}

output "image_event_operation" {
  value = {
    for a in alicloud_threat_detection_image_event_operation.this : a => {
      id = a.id
    }
  }
}

output "instances" {
  value = {
    for a in alicloud_threat_detection_instance.this : a => {
      id          = a.id
      create_time = a.create_time
      status      = a.status
    }
  }
}

/*output "log_meta" {
  value = {
    for a in threat_detection_log_meta.this : a => {
      id = a.id
    }
  }
}*/

output "malicious_file" {
  value = {
    for a in alicloud_threat_detection_malicious_file_whitelist_config.this : a => {
      id          = a.id
      create_time = a.create_time
    }
  }
}

output "oss_scan_config" {
  value = {
    for a in alicloud_threat_detection_oss_scan_config.this : a => {
      id = a.id
    }
  }
}

output "vul_whitelist" {
  value = {
    for a in alicloud_threat_detection_vul_whitelist.this : a => {
      id = a.id
    }
  }
}

output "web_lock_config" {
  value = {
    for a in alicloud_threat_detection_web_lock_config.this : a => {
      id                  = a.id
      exclusive_dir       = a.exclusive_dir
      exclusive_file      = a.exclusive_file
      exclusive_file_type = a.exclusive_file_type
      local_backup_dir    = a.local_backup_dir
    }
  }
}