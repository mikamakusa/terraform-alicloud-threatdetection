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