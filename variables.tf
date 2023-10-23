
variable "allow_ssh" {
  type        = bool
  default     = false
  description = "Allow external access to ssh port 22 on the Vault VMs. It is a best practice to set this to false, however it is true by default for the sake of backwards compatibility"
}

variable "domain" {
  type        = string
  default     = ""
  description = "The domain name that will be set in the api_addr. Load Balancer IP used by default"
}

variable "host_project_id" {
  type        = string
  default     = ""
  description = "The project id of the shared VPC host project, when deploying into a shared VPC"
}

variable "load_balancing_scheme" {
  type        = string
  default     = "EXTERNAL"
  description = "Options are INTERNAL or EXTERNAL. If EXTERNAL, the forwarding rule will be of type EXTERNAL and a public IP will be created. If INTERNAL the type will be INTERNAL and a random RFC 1918 private IP will be assigned"
}

variable "network" {
  type        = string
  default     = ""
  description = "The self link of the VPC network for Vault. By default, one will be created for you"
}

variable "project_id" {
  type        = string
  description = "ID of the project in which to create resources and add IAM bindings"
}

variable "region" {
  type        = string
  default     = "us-east4"
  description = "GCP region in which to create resources"
}

variable "service_label" {
  type        = string
  default     = ""
  description = "The service label to set on the internal load balancer. If not empty, this enables internal DNS for internal load balancers. By default, the service label is disabled. This has no effect on external load balancers"
}

variable "ssh_allowed_cidrs" {
  type = list(string)
  default = [
    "0.0.0.0/0"
  ]
  description = "List of CIDR blocks to allow access to SSH into nodes"
}

variable "storage_bucket_force_destroy" {
  type        = string
  default     = "false"
  description = "Set to true to force deletion of backend bucket on terraform destroy"
}

variable "tls_ca_subject" {
  type = object({
    common_name         = string,
    organization        = string,
    organizational_unit = string,
    street_address      = list(string),
    locality            = string,
    province            = string,
    country             = string,
    postal_code         = string,
  })
  default = {
    "common_name" : "Example Inc. Root",
    "country" : "US",
    "locality" : "The Intranet",
    "organization" : "Example, Inc",
    "organizational_unit" : "Department of Certificate Authority",
    "postal_code" : "95559-1227",
    "province" : "CA",
    "street_address" : [
      "123 Example Street"
    ]
  }
  description = "The subject block for the root CA certificate"
}

variable "vault_log_level" {
  type        = string
  default     = "warn"
  description = "Log level to run Vault in. See the Vault documentation for valid values"
}

variable "vault_machine_type" {
  type        = string
  default     = "n2-standard-2"
  description = "Machine type to use for Vault instances"
}

variable "vault_max_num_servers" {
  type        = string
  default     = "7"
  description = "Maximum number of Vault server nodes to run at one time. The group will not autoscale beyond this number"
}

variable "vault_min_num_servers" {
  type        = string
  default     = "1"
  description = "Minimum number of Vault server nodes in the autoscaling group. The group will not have less than this number of nodes"
}

variable "vault_ui_enabled" {
  type        = string
  default     = "true"
  description = "Controls whether the Vault UI is enabled and accessible"
}


variable "vault_update_policy_type" {
  type        = string
  default     = "OPPORTUNISTIC"
  description = "Options are OPPORTUNISTIC or PROACTIVE. If PROACTIVE, the instance group manager proactively executes actions in order to bring instances to their target versions"
}

variable "vault_version" {
  type        = string
  default     = "1.6.0"
  description = "Version of vault to install. This version must be 1.0+ and must be published on the HashiCorp releases service"
}
