locals {
  optional_scopes = compact(
    concat(
      var.optional_scopes,
      [for key, val in var.client_scopes : val.include_in_token_scope ? key : null]
    )
  )

  default_scopes = compact(
    concat(
      var.default_scopes,
      [for key, val in var.client_scopes : val.include_in_token_scope ? null : key]
    )
  )
}
