provider "alicloud" {}

module "asset_selection_config" {
  source = "../../"
  asset_selection_config = [
    {
      business_type = "agentlesss_vul_white_1"
      target_type   = "instance"
      platform      = "all"
    }
  ]
}