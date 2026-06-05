// Dev environment Terraform configuration for testing the reusable S3 bucket module.
// This module is sourced from the terraform-aws-platform-modules repository.

module "s3_bucket" {
  source = "git::https://github.com/Shah-CloudEng/terraform-aws-platform-modules.git//modules/s3-bucket?ref=main"

  name                = var.bucket_name
  environment         = var.environment
  versioning_enabled  = var.versioning_enabled
  block_public_access = var.block_public_access
  force_destroy       = var.force_destroy
  tags                = var.tags
}
