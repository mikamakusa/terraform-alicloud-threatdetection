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