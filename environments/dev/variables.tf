// Variable definitions for the dev environment S3 bucket test harness.

variable "bucket_name" {
  description = "Name of the S3 bucket to create."
  type        = string
}

variable "environment" {
  description = "Deployment environment identifier."
  type        = string
  default     = "dev"
}

variable "versioning_enabled" {
  description = "Enable S3 bucket versioning."
  type        = bool
  default     = true
}

variable "block_public_access" {
  description = "Enable S3 block public access settings."
  type        = bool
  default     = true
}

variable "force_destroy" {
  description = "Allow the S3 bucket to be destroyed even when it contains objects."
  type        = bool
  default     = false
}

variable "tags" {
  description = "Tags to apply to the S3 bucket."
  type        = map(string)
}
