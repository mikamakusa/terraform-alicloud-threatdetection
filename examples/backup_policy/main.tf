provider "alicloud" {}

module "backup_policy" {
  source = "../../"
  assets = {
    machine_types = "ecs"
  }
  backup_policy = [
    {
      name           = "tf-example-name"
      policy         = "{\"Exclude\":[\"/bin/\",\"/usr/bin/\",\"/sbin/\",\"/boot/\",\"/proc/\",\"/sys/\",\"/srv/\",\"/lib/\",\"/selinux/\",\"/usr/sbin/\",\"/run/\",\"/lib32/\",\"/lib64/\",\"/lost+found/\",\"/var/lib/kubelet/\",\"/var/lib/ntp/proc\",\"/var/lib/container\"],\"ExcludeSystemPath\":true,\"Include\":[],\"IsDefault\":1,\"Retention\":7,\"Schedule\":\"I|1668703620|PT24H\",\"Source\":[],\"SpeedLimiter\":\"\",\"UseVss\":true}"
      policy_version = "2.0.0"
    }
  ]
}