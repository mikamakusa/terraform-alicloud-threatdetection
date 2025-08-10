data "alicloud_threat_detection_assets" "this" {
  machine_types  = var.assets.machine_types
  criteria       = var.assets.criteria
  importance     = var.assets.importance
  logical_exp    = var.assets.logical_exp
  no_group_trace = var.assets.no_group_trace
  ids            = var.assets.ids
  output_file    = var.assets.output_file
}