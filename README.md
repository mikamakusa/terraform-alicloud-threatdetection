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
| [alicloud_threat_detection_client_user_define_rule.this](https://registry.terraform.io/providers/aliyun/alicloud/latest/docs/resources/threat_detection_client_user_define_rule) | resource |
| [alicloud_threat_detection_file_upload_limit.this](https://registry.terraform.io/providers/aliyun/alicloud/latest/docs/resources/threat_detection_file_upload_limit) | resource |
| [alicloud_threat_detection_honey_pot.this](https://registry.terraform.io/providers/aliyun/alicloud/latest/docs/resources/threat_detection_honey_pot) | resource |
| [alicloud_threat_detection_honeypot_node.this](https://registry.terraform.io/providers/aliyun/alicloud/latest/docs/resources/threat_detection_honeypot_node) | resource |
| [alicloud_threat_detection_honeypot_preset.this](https://registry.terraform.io/providers/aliyun/alicloud/latest/docs/resources/threat_detection_honeypot_preset) | resource |
| [alicloud_threat_detection_image_event_operation.this](https://registry.terraform.io/providers/aliyun/alicloud/latest/docs/resources/threat_detection_image_event_operation) | resource |
| [alicloud_threat_detection_instance.this](https://registry.terraform.io/providers/aliyun/alicloud/latest/docs/resources/threat_detection_instance) | resource |
| [alicloud_threat_detection_malicious_file_whitelist_config.this](https://registry.terraform.io/providers/aliyun/alicloud/latest/docs/resources/threat_detection_malicious_file_whitelist_config) | resource |
| [alicloud_threat_detection_oss_scan_config.this](https://registry.terraform.io/providers/aliyun/alicloud/latest/docs/resources/threat_detection_oss_scan_config) | resource |
| [alicloud_threat_detection_sas_trail.this](https://registry.terraform.io/providers/aliyun/alicloud/latest/docs/resources/threat_detection_sas_trail) | resource |
| [alicloud_threat_detection_assets.this](https://registry.terraform.io/providers/aliyun/alicloud/latest/docs/data-sources/threat_detection_assets) | data source |
| [alicloud_threat_detection_honeypot_images.this](https://registry.terraform.io/providers/aliyun/alicloud/latest/docs/data-sources/threat_detection_honeypot_images) | data source |

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
| <a name="input_client_user_define_rule"></a> [client\_user\_define\_rule](#input\_client\_user\_define\_rule) | n/a | <pre>list(object({<br/>    action_type      = number<br/>    name             = string<br/>    platform         = string<br/>    type             = number<br/>    cmdline          = optional(string)<br/>    file_path        = optional(string)<br/>    hash             = optional(string)<br/>    ip               = optional(string)<br/>    new_file_path    = optional(string)<br/>    parent_cmdline   = optional(string)<br/>    parent_proc_path = optional(string)<br/>    port_str         = optional(string)<br/>    proc_path        = optional(string)<br/>    registry_content = optional(string)<br/>    registry_key     = optional(string)<br/>  }))</pre> | `[]` | no |
| <a name="input_file_upload_limit"></a> [file\_upload\_limit](#input\_file\_upload\_limit) | n/a | `number` | `null` | no |
| <a name="input_honeypot_images"></a> [honeypot\_images](#input\_honeypot\_images) | Datasource - fourni un image pour les honeypot. | <pre>object({<br/>    ids         = optional(list(string))<br/>    name_regex  = optional(string)<br/>    output_file = optional(string)<br/>  })</pre> | `null` | no |
| <a name="input_honeypot_node"></a> [honeypot\_node](#input\_honeypot\_node) | n/a | <pre>list(object({<br/>    available_probe_num            = number<br/>    name                           = string<br/>    allow_honeypot_access_internet = optional(bool)<br/>    honeypot = optional(list(object({<br/>      name = string<br/>    })))<br/>    preset = optional(list(object({<br/>      name            = string<br/>      burp            = string<br/>      portrait_option = optional(bool)<br/>      trojan_git      = optional(string)<br/>    })))<br/>  }))</pre> | `[]` | no |
| <a name="input_image_event_operation"></a> [image\_event\_operation](#input\_image\_event\_operation) | n/a | <pre>list(object({<br/>    conditions     = string<br/>    event_key      = optional(string)<br/>    name           = optional(string)<br/>    event_type     = string<br/>    operation_code = string<br/>    scenarios      = optional(string)<br/>  }))</pre> | `[]` | no |
| <a name="input_instances"></a> [instances](#input\_instances) | n/a | <pre>list(object({<br/>    payment_type                = string<br/>    version_code                = string<br/>    buy_number                  = optional(string)<br/>    container_image_scan_new    = optional(string)<br/>    honeypot                    = optional(string)<br/>    honeypot_switch             = optional(string)<br/>    modify_type                 = optional(string)<br/>    period                      = optional(number)<br/>    rasp_count                  = optional(string)<br/>    renew_period                = optional(number)<br/>    renewal_period_unit         = optional(string)<br/>    renewal_status              = optional(string)<br/>    sas_anti_ransomware         = optional(string)<br/>    sas_cspm                    = optional(string)<br/>    sas_cspm_switch             = optional(string)<br/>    sas_sc                      = optional(bool)<br/>    sas_sdk                     = optional(string)<br/>    sas_sdk_switch              = optional(string)<br/>    sas_sls_storage             = optional(string)<br/>    sas_webguard_boolean        = optional(string)<br/>    sas_webguard_order_num      = optional(string)<br/>    threat_analysis             = optional(string)<br/>    threat_analysis_flow        = optional(string)<br/>    threat_analysis_sls_storage = optional(string)<br/>    threat_analysis_switch      = optional(string)<br/>    threat_analysis_switch1     = optional(string)<br/>    v_core                      = optional(string)<br/>    vul_count                   = optional(string)<br/>    vul_switch                  = optional(string)<br/>  }))</pre> | `[]` | no |
| <a name="input_malicious_file_whitelist_config"></a> [malicious\_file\_whitelist\_config](#input\_malicious\_file\_whitelist\_config) | n/a | <pre>list(object({<br/>    operator     = optional(string)<br/>    field        = optional(string)<br/>    target_value = optional(string)<br/>    target_type  = optional(string)<br/>    name         = optional(string)<br/>    source       = optional(string)<br/>    field_value  = optional(string)<br/>  }))</pre> | `[]` | no |
| <a name="input_oss_scan_config"></a> [oss\_scan\_config](#input\_oss\_scan\_config) | n/a | <pre>list(object({<br/>    bucket_name_list = set(string)<br/>    enable           = number<br/>    end_time         = string<br/>    key_suffix_list  = set(string)<br/>    scan_day_list    = set(string)<br/>    start_time       = string<br/>    key_prefix_list  = optional(set(string))<br/>    all_key_prefix   = optional(bool)<br/>    name             = optional(string)<br/>  }))</pre> | n/a | yes |
| <a name="input_sas_trail"></a> [sas\_trail](#input\_sas\_trail) | n/a | `bool` | `false` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_alicloud_threat_detection_baseline_strategy"></a> [alicloud\_threat\_detection\_baseline\_strategy](#output\_alicloud\_threat\_detection\_baseline\_strategy) | n/a |
| <a name="output_alicloud_threat_detection_client_file_protect"></a> [alicloud\_threat\_detection\_client\_file\_protect](#output\_alicloud\_threat\_detection\_client\_file\_protect) | n/a |
| <a name="output_anti_brute_force_rule"></a> [anti\_brute\_force\_rule](#output\_anti\_brute\_force\_rule) | n/a |
| <a name="output_asset_bind"></a> [asset\_bind](#output\_asset\_bind) | n/a |
| <a name="output_asset_selection_config"></a> [asset\_selection\_config](#output\_asset\_selection\_config) | n/a |
| <a name="output_backup_policy"></a> [backup\_policy](#output\_backup\_policy) | n/a |
| <a name="output_client_user_define_rule"></a> [client\_user\_define\_rule](#output\_client\_user\_define\_rule) | n/a |
| <a name="output_file_upload_limit"></a> [file\_upload\_limit](#output\_file\_upload\_limit) | n/a |
| <a name="output_honey_pot"></a> [honey\_pot](#output\_honey\_pot) | n/a |
| <a name="output_honeypot_node"></a> [honeypot\_node](#output\_honeypot\_node) | n/a |
| <a name="output_honeypot_preset"></a> [honeypot\_preset](#output\_honeypot\_preset) | n/a |
| <a name="output_image_event_operation"></a> [image\_event\_operation](#output\_image\_event\_operation) | n/a |
| <a name="output_instances"></a> [instances](#output\_instances) | n/a |
| <a name="output_malicious_file"></a> [malicious\_file](#output\_malicious\_file) | n/a |
| <a name="output_oss_scan_config"></a> [oss\_scan\_config](#output\_oss\_scan\_config) | n/a |
