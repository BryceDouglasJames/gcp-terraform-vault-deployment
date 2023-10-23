variable "project_id" {
  type        = string
  description = "GCP project id"
}

variable "region" {
  default     = "us-east4"
  description = "GCP region in which to create resources"
}