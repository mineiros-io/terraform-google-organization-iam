# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]

## [0.1.0]

### Added

- Add support for `var.computed_members_map`
- Add support for audit log in policy bindings

### Removed

- BREAKING: Remove fallback to `var.members` in policy bindings
- BREAKING: Remove support for Terraform versions before v1.0
- BREAKING: Remove support for Terraform Google Provider versions before v4.0
- BREAKING: Remove `module_enabled` output

## [0.0.4]

### Fixed

- Allow to only create audit configs (without defining IAM bindings or memberships)

## [0.0.3]

### Added

- Add support for `google_project_iam_audit_config` resource

## [0.0.2]

### Added

- Support for provider 4.x
- Add validation for `var.members`

## [0.0.1]

### Added

- Initial Implementation

[unreleased]: https://github.com/mineiros-io/terraform-google-organization-iam/compare/v0.1.0...HEAD
[0.1.0]: https://github.com/mineiros-io/terraform-google-organization-iam/compare/v0.0.4...v0.1.0
[0.0.4]: https://github.com/mineiros-io/terraform-google-organization-iam/compare/v0.0.3...v0.0.4
[0.0.3]: https://github.com/mineiros-io/terraform-google-organization-iam/compare/v0.0.2...v0.0.3
[0.0.2]: https://github.com/mineiros-io/terraform-google-organization-iam/compare/v0.0.1...v0.0.2
[0.0.1]: https://github.com/mineiros-io/terraform-google-organization-iam/releases/tag/v0.0.1
