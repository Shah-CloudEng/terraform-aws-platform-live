# terraform-aws-platform-live

## Purpose

This repository is a module testing repository for reusable Terraform modules. It is currently scoped to a single `dev` test environment and is not implementing `stage` or `prod` yet.

## Relationship with terraform-aws-platform-modules

This repository consumes shared infrastructure modules from the separate repository:

- `terraform-aws-platform-modules`

The focus is on validating module behavior and environment-specific configuration in a dedicated test harness.

## Current scope

- Only `environments/dev` is implemented
- `environments/stage` and `environments/prod` are planned for future expansion
- Root-level Terraform files are removed so test configuration lives under `environments/dev`

## Testing workflow

Run Terraform from the `environments/dev` directory for module validation:

- `terraform init`
- `terraform validate`
- `terraform plan`
- `terraform apply`

## Future direction

Stage and prod environments will be added later once the reusable module contracts are stabilized and the dev test harness is validated.
