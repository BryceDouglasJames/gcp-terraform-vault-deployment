module "vault" {
  source = "terraform-google-modules/vault/google"

  allow_ssh                    = var.allow_ssh
  domain                       = var.domain 
  host_project_id              = var.host_project_id
  load_balancing_scheme        = var.load_balancing_scheme
  network                      = var.network
  project_id                   = var.project_id
  region                       = var.region
  service_label                = var.service_label
  ssh_allowed_cidrs            = var.ssh_allowed_cidrs
  storage_bucket_force_destroy = var.storage_bucket_force_destroy
  tls_ca_subject               = var.tls_ca_subject
  vault_log_level              = var.vault_log_level
  vault_machine_type           = var.vault_machine_type
  vault_max_num_servers        = var.vault_max_num_servers
  vault_min_num_servers        = var.vault_min_num_servers
  vault_ui_enabled             = var.vault_ui_enabled
  vault_update_policy_type     = var.vault_update_policy_type
  vault_version                = var.vault_version
}