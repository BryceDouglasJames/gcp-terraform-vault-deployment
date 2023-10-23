module "vault" {
  source         = "terraform-google-modules/vault/google"
  project_id     = var.project_id
  region         = var.region
  kms_keyring    = var.kms_keyring
  kms_crypto_key = var.kms_crypto_key
}