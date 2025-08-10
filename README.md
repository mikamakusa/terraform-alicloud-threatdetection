## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_alicloud"></a> [alicloud](#requirement\_alicloud) | >= 1.211.2 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_alicloud"></a> [alicloud](#provider\_alicloud) | 1.256.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [alicloud_threat_detection_anti_brute_force_rule.this](https://registry.terraform.io/providers/aliyun/alicloud/latest/docs/resources/threat_detection_anti_brute_force_rule) | resource |
| [alicloud_threat_detection_asset_bind.this](https://registry.terraform.io/providers/aliyun/alicloud/latest/docs/resources/threat_detection_asset_bind) | resource |
| [alicloud_threat_detection_asset_selection_config.this](https://registry.terraform.io/providers/aliyun/alicloud/latest/docs/resources/threat_detection_asset_selection_config) | resource |
| [alicloud_threat_detection_backup_policy.this](https://registry.terraform.io/providers/aliyun/alicloud/latest/docs/resources/threat_detection_backup_policy) | resource |
| [alicloud_threat_detection_baseline_strategy.this](https://registry.terraform.io/providers/aliyun/alicloud/latest/docs/resources/threat_detection_baseline_strategy) | resource |
| [alicloud_threat_detection_client_file_protect.this](https://registry.terraform.io/providers/aliyun/alicloud/latest/docs/resources/threat_detection_client_file_protect) | resource |
| [alicloud_threat_detection_assets.this](https://registry.terraform.io/providers/aliyun/alicloud/latest/docs/data-sources/threat_detection_assets) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_anti_brute_force_rule"></a> [anti\_brute\_force\_rule](#input\_anti\_brute\_force\_rule) | Resource - crée une règle de détection des menaces de type Brute-Force. | <pre>list(object({<br/>    name           = string<br/>    fail_count     = number<br/>    forbidden_time = number<br/>    span           = number<br/>    uuid_list      = set(string)<br/>    default_rule   = optional(bool)<br/>  }))</pre> | `[]` | no |
| <a name="input_asset_selection_config"></a> [asset\_selection\_config](#input\_asset\_selection\_config) | n/a | <pre>list(object({<br/>    business_type = string<br/>    target_type   = string<br/>    platform      = string<br/>  }))</pre> | `[]` | no |
| <a name="input_assets"></a> [assets](#input\_assets) | Datasource - fourni un outils de détection des menaces à l'utilisateur. | <pre>object({<br/>    machine_types  = optional(string)<br/>    criteria       = optional(string)<br/>    importance     = optional(number)<br/>    logical_exp    = optional(string)<br/>    no_group_trace = optional(bool)<br/>    ids            = optional(set(string))<br/>    output_file    = optional(string)<br/>  })</pre> | `null` | no |
| <a name="input_auth_version"></a> [auth\_version](#input\_auth\_version) | n/a | `string` | `null` | no |
| <a name="input_backup_policy"></a> [backup\_policy](#input\_backup\_policy) | n/a | <pre>list(object({<br/>    name           = string<br/>    policy         = string<br/>    policy_version = string<br/>  }))</pre> | `[]` | no |
| <a name="input_baseline_strategy"></a> [baseline\_strategy](#input\_baseline\_strategy) | n/a | <pre>list(object({<br/>    name               = string<br/>    custom_type        = string<br/>    cycle_days         = number<br/>    end_time           = string<br/>    risk_sub_type_name = string<br/>    start_time         = string<br/>    target_type        = string<br/>    cycle_start_time   = optional(number)<br/>  }))</pre> | `[]` | no |
| <a name="input_client_file_protect"></a> [client\_file\_protect](#input\_client\_file\_protect) | n/a | <pre>list(object({<br/>    file_ops    = set(string)<br/>    file_paths  = set(string)<br/>    proc_paths  = set(string)<br/>    rule_action = string<br/>    name        = string<br/>    alert_level = number<br/>    status      = optional(number)<br/>    switch_id   = optional(string)<br/>  }))</pre> | `[]` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_alicloud_threat_detection_baseline_strategy"></a> [alicloud\_threat\_detection\_baseline\_strategy](#output\_alicloud\_threat\_detection\_baseline\_strategy) | n/a |
| <a name="output_alicloud_threat_detection_client_file_protect"></a> [alicloud\_threat\_detection\_client\_file\_protect](#output\_alicloud\_threat\_detection\_client\_file\_protect) | n/a |
| <a name="output_anti_brute_force_rule"></a> [anti\_brute\_force\_rule](#output\_anti\_brute\_force\_rule) | n/a |
| <a name="output_asset_bind"></a> [asset\_bind](#output\_asset\_bind) | n/a |
| <a name="output_asset_selection_config"></a> [asset\_selection\_config](#output\_asset\_selection\_config) | n/a |
| <a name="output_backup_policy"></a> [backup\_policy](#output\_backup\_policy) | n/a |
