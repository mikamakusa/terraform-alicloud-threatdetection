## DATAS
variable "assets" {
  type = object({
    machine_types  = optional(string)
    criteria       = optional(string)
    importance     = optional(number)
    logical_exp    = optional(string)
    no_group_trace = optional(bool)
    ids            = optional(set(string))
    output_file    = optional(string)
  })
  default     = null
  description = "Datasource - fourni un outils de détection des menaces à l'utilisateur."
}

variable "honeypot_images" {
  type = object({
    ids         = optional(list(string))
    name_regex  = optional(string)
    output_file = optional(string)
  })
  default     = null
  description = "Datasource - fourni un image pour les honeypot."
}

## VARIABLES
variable "anti_brute_force_rule" {
  type = list(object({
    name           = string
    fail_count     = number
    forbidden_time = number
    span           = number
    uuid_list      = set(string)
    default_rule   = optional(bool)
  }))
  default = []

  validation {
    condition     = alltrue([for a in var.anti_brute_force_rule : true if contains([5, 15, 30, 60, 120, 360, 720, 1440, 10080, 52560000], a.forbidden_time)])
    error_message = "Valid values are : 5, 15, 30, 60, 120, 360, 720, 1440, 10080 or 52560000."
  }

  description = "Resource - crée une règle de détection des menaces de type Brute-Force."
}

variable "auth_version" {
  type    = string
  default = null
}

variable "asset_selection_config" {
  type = list(object({
    business_type = string
    target_type   = string
    platform      = string
  }))
  default = []
}

variable "backup_policy" {
  type = list(object({
    name           = string
    policy         = string
    policy_version = string
  }))
  default = []
}

variable "baseline_strategy" {
  type = list(object({
    name               = string
    custom_type        = string
    cycle_days         = number
    end_time           = string
    risk_sub_type_name = string
    start_time         = string
    target_type        = string
    cycle_start_time   = optional(number)
  }))
  default = []

  validation {
    condition     = alltrue([for type in var.baseline_strategy : true if contains(["common", "custom"], type.custom_type)])
    error_message = "Valid values : common, custom."
  }

  validation {
    condition     = alltrue([for cycle in var.baseline_strategy : true if contains([0, 6, 12, 18], cycle.cycle_start_time)])
    error_message = "Valid values : 0, 6, 12, 18."
  }

  validation {
    condition     = alltrue([for type in var.baseline_strategy : true if contains(["groupId", "uuid"], type.target_type)])
    error_message = "Valid values : groupId, uuid."
  }
}

variable "client_file_protect" {
  type = list(object({
    file_ops    = set(string)
    file_paths  = set(string)
    proc_paths  = set(string)
    rule_action = string
    name        = string
    alert_level = number
    status      = optional(number)
    switch_id   = optional(string)
  }))
  default = []
}

variable "client_user_define_rule" {
  type = list(object({
    action_type      = number
    name             = string
    platform         = string
    type             = number
    cmdline          = optional(string)
    file_path        = optional(string)
    hash             = optional(string)
    ip               = optional(string)
    new_file_path    = optional(string)
    parent_cmdline   = optional(string)
    parent_proc_path = optional(string)
    port_str         = optional(string)
    proc_path        = optional(string)
    registry_content = optional(string)
    registry_key     = optional(string)
  }))
  default = []

  validation {
    condition     = alltrue([for rule in var.client_user_define_rule : true if contains([0, 1], rule.action_type)])
    error_message = "Valid values : 0 or 1."
  }

  validation {
    condition     = alltrue([for rule in var.client_user_define_rule : true if contains(["windows", "linux", "all"], rule.platform)])
    error_message = "Valid values : windows, linux or all."
  }

  validation {
    condition     = alltrue([for rule in var.client_user_define_rule : true if contains([1, 2, 3, 4, 5, 6, 7], rule.type)])
    error_message = "Valid values : 1, 2, 3, 4, 5, 6 or 7."
  }
}

variable "file_upload_limit" {
  type    = number
  default = null
}

variable "honeypot_node" {
  type = list(object({
    available_probe_num            = number
    name                           = string
    allow_honeypot_access_internet = optional(bool)
    honeypot = optional(list(object({
      name = string
    })))
    preset = optional(list(object({
      name            = string
      burp            = string
      portrait_option = optional(bool)
      trojan_git      = optional(string)
    })))
  }))
  default = []
}