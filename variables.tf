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