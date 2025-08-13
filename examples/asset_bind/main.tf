provider "alicloud" {}

module "asset_bind" {
  source = "../../"
  assets = {
    machine_types = "ecs"
  }
  auth_version = "5"
}