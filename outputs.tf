# ------------------------------------------------------------------------------
# OUTPUT CALCULATED VARIABLES (prefer full objects)
# ------------------------------------------------------------------------------

# ------------------------------------------------------------------------------
# OUTPUT ALL RESOURCES AS FULL OBJECTS
# ------------------------------------------------------------------------------
locals {
  binding = try(google_organization_iam_binding.binding[0], null)
  member  = try(google_organization_iam_member.member, null)

  iam_output = [local.binding, local.member]

  iam_output_index = var.authoritative ? 0 : 1
}

output "iam" {
  description = "All attributes of the created 'google_organization_iam_*' resource according to the mode."
  value       = local.iam_output[local.iam_output_index]
}

# ------------------------------------------------------------------------------
# OUTPUT ALL INPUT VARIABLES
# ------------------------------------------------------------------------------

# ------------------------------------------------------------------------------
# OUTPUT MODULE CONFIGURATION
# ------------------------------------------------------------------------------

output "module_enabled" {
  description = "Whether the module is enabled."
  value       = var.module_enabled
}
