resource "google_organization_iam_binding" "binding" {
  count = var.module_enabled && var.authoritative ? 1 : 0

  depends_on = [var.module_depends_on]

  org_id = var.org_id
  role   = var.role

  members = var.members

  dynamic "condition" {
    for_each = var.condition != null ? ["condition"] : []

    content {
      title       = var.condition.title
      description = try(var.condition.description, null)
      expression  = var.condition.expression
    }
  }
}

resource "google_organization_iam_member" "member" {
  for_each = var.module_enabled && !var.authoritative ? var.members : []

  org_id = var.org_id
  role   = var.role

  member = each.value

  dynamic "condition" {
    for_each = var.condition != null ? ["condition"] : []

    content {
      title       = var.condition.title
      description = try(var.condition.description, null)
      expression  = var.condition.expression
    }
  }
}
