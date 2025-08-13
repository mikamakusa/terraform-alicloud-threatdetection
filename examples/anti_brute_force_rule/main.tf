provider "alicloud" {}

module "anti_brute_force_rule" {
  source = "../../"
  anti_brute_force_rule = [
    {
      name           = "apispec_example"
      forbidden_time = 360
      uuid_list      = ["032b618f-b220-4a0d-bd37-fbdc6ef58b6a"]
      fail_count     = 80
      span           = 10
      default_rule   = true
    }
  ]
}