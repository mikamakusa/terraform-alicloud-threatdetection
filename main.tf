resource "alicloud_threat_detection_anti_brute_force_rule" "this" {
  for_each                   = { for rule in var.anti_brute_force_rule : rule.name => rule }
  anti_brute_force_rule_name = each.value.name
  fail_count                 = each.value.fail_count
  forbidden_time             = each.value.forbidden_time
  span                       = each.value.span
  uuid_list                  = each.value.uuid_list
  default_rule               = each.value.default_rule
}

resource "alicloud_threat_detection_asset_bind" "this" {
  count        = var.auth_version ? 1 : 0
  uuid         = data.alicloud_threat_detection_assets.this.assets.0.uuid
  auth_version = var.auth_version
}

resource "alicloud_threat_detection_asset_selection_config" "this" {
  for_each      = { for config in var.asset_selection_config : config.business_type => config }
  business_type = each.value.business_type
  target_type   = each.value.target_type
  platform      = each.value.platform
}

resource "alicloud_threat_detection_backup_policy" "this" {
  for_each           = { for policy in var.backup_policy : policy.name => policy }
  backup_policy_name = each.value.name
  policy             = each.value.policy
  policy_version     = each.value.policy_version
  uuid_list          = [data.alicloud_threat_detection_assets.this.ids]
}

resource "alicloud_threat_detection_baseline_strategy" "this" {
  for_each               = { for strategy in var.baseline_strategy : strategy.name => strategy }
  baseline_strategy_name = each.value.name
  custom_type            = each.value.custom_type
  cycle_days             = each.value.cycle_days
  end_time               = each.value.end_time
  risk_sub_type_name     = each.value.risk_sub_type_name
  start_time             = each.value.start_time
  target_type            = each.value.target_type
  cycle_start_time       = each.value.cycle_start_time
}

resource "alicloud_threat_detection_client_file_protect" "this" {
  for_each    = { for file in var.client_file_protect : file.name => file }
  file_ops    = each.value.file_ops
  file_paths  = each.value.file_paths
  proc_paths  = each.value.proc_paths
  rule_action = each.value.rule_action
  rule_name   = each.value.name
  alert_level = each.value.alert_level
  status      = each.value.status
  switch_id   = each.value.switch_id
}

resource "alicloud_threat_detection_client_user_define_rule" "this" {
  for_each                     = { for rule in var.client_user_define_rule : rule.name => rule }
  action_type                  = each.value.action_type
  client_user_define_rule_name = each.value.name
  platform                     = each.value.platform
  type                         = each.value.type
  cmdline                      = each.value.cmdline
  file_path                    = each.value.file_path
  hash                         = each.value.hash
  ip                           = each.value.ip
  new_file_path                = each.value.new_file_path
  parent_cmdline               = each.value.parent_cmdline
  parent_proc_path             = each.value.parent_proc_path
  port_str                     = each.value.port_str
  proc_path                    = each.value.proc_path
  registry_content             = each.value.registry_content
  registry_key                 = each.value.registry_key
}

resource "alicloud_threat_detection_file_upload_limit" "this" {
  count = var.file_upload_limit ? 1 : 0
  limit = var.file_upload_limit
}

resource "alicloud_threat_detection_honeypot_node" "this" {
  for_each                       = { for node in var.honeypot_node : node.name => node }
  available_probe_num            = each.value.available_probe_num
  node_name                      = each.value.name
  allow_honeypot_access_internet = each.value.allow_honeypot_access_internet
}

resource "alicloud_threat_detection_honey_pot" "this" {
  for_each            = { for node in var.honeypot_node : node.name => node if contains(keys(node), "honeypot") && node.honeypot != null }
  honeypot_image_id   = data.alicloud_threat_detection_honeypot_images.this.images.0.honeypot_image_id
  honeypot_image_name = data.alicloud_threat_detection_honeypot_images.this.images.0.honeypot_image_name
  honeypot_name       = lookup(each.value, "name")
  node_id             = alicloud_threat_detection_honeypot_node.this[each.key].id
}

resource "alicloud_threat_detection_honeypot_preset" "this" {
  for_each            = { for node in var.honeypot_node : node.name => node if contains(keys(node), "preset") && node.preset != null }
  honeypot_image_name = data.alicloud_threat_detection_honeypot_images.this.images.0.honeypot_image_name
  node_id             = alicloud_threat_detection_honeypot_node.this[each.key].id
  preset_name         = lookup(each.value, "name")

  meta {
    burp            = lookup(each.value, "burp")
    portrait_option = lookup(each.value, "portrait_option")
    trojan_git      = lookup(each.value, "trojan_git")
  }
}