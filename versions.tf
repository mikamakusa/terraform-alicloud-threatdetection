terraform {
  required_providers {
    alicloud = {
      source  = "aliyun/alicloud"
      version = ">= 1.211.2"
    }
  }
}

provider "alicloud" {}