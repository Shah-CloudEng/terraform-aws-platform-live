# terraform-aws-platform-live

## Purpose

This repository is the live infrastructure deployment repository for the AWS platform. It contains environment-specific Terraform configurations that consume reusable platform modules from `terraform-aws-platform-modules`.

## Relationship with terraform-aws-platform-modules

This repository does not contain reusable module implementations. Instead, it declares and composes infrastructure using shared, versioned modules maintained in the separate repository:

- `terraform-aws-platform-modules`

The live repository focuses on environment configuration, variable values, environment boundaries, and deployment orchestration.

## Environment strategy

The repository is organized into separate environment workspaces:

- `dev` for development and integration testing
- `stage` for pre-production validation
- `prod` for production

Each environment folder should define its own variable values and outputs while reusing the same module interfaces.

## CI/CD approach

CI/CD pipelines should validate Terraform configuration, run `terraform fmt`, `terraform validate`, and `terraform plan` for each target environment. Automation should use remote state and approve changes before applying to production.

## Future deployment workflow

A recommended future workflow includes:

1. Maintain reusable modules in `terraform-aws-platform-modules`
2. Pin module versions in the live environment configurations
3. Use environment-specific variable files for each stage
4. Execute `terraform init` and `terraform plan` in CI
5. Apply changes through gated release processes for `prod`

---

> Note: This repository is a live environment repository and is intentionally separate from reusable module source code.
