provider "alicloud" {}

module "baseline_strategy" {
  source = "../../"
  baseline_strategy = [
    {
      custom_type        = "custom"
      end_time           = "08:00:00"
      name               = "apispec"
      cycle_days         = 3
      target_type        = "groupId"
      start_time         = "05:00:00"
      risk_sub_type_name = "hc_exploit_redis"
    }
  ]
}