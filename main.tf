# Full Realm configuration
resource "keycloak_realm" "this" {
  enabled = var.enabled

  realm             = var.realm
  internal_id       = var.internal_id
  display_name      = var.display_name
  display_name_html = var.display_name_html

  attributes            = var.attributes
  organizations_enabled = var.organizations_enabled

  user_managed_access            = var.user_managed_access
  registration_allowed           = var.registration_allowed
  registration_email_as_username = var.registration_email_as_username
  edit_username_allowed          = var.edit_username_allowed
  reset_password_allowed         = var.reset_password_allowed
  remember_me                    = var.remember_me
  verify_email                   = var.verify_email
  login_with_email_allowed       = var.login_with_email_allowed
  duplicate_emails_allowed       = var.duplicate_emails_allowed
  ssl_required                   = var.ssl_required

  password_policy = var.password_policy

  login_theme   = var.login_theme
  account_theme = var.account_theme
  admin_theme   = var.admin_theme
  email_theme   = var.email_theme

  default_signature_algorithm = var.default_signature_algorithm
  revoke_refresh_token        = var.revoke_refresh_token
  refresh_token_max_reuse     = var.refresh_token_max_reuse

  sso_session_idle_timeout             = var.sso_session_idle_timeout
  sso_session_max_lifespan             = var.sso_session_max_lifespan
  sso_session_idle_timeout_remember_me = var.sso_session_idle_timeout_remember_me
  sso_session_max_lifespan_remember_me = var.sso_session_max_lifespan_remember_me

  offline_session_max_lifespan_enabled = var.offline_session_max_lifespan_enabled
  offline_session_idle_timeout         = var.offline_session_idle_timeout
  offline_session_max_lifespan         = var.offline_session_max_lifespan

  client_session_idle_timeout = var.client_session_idle_timeout
  client_session_max_lifespan = var.client_session_max_lifespan

  access_token_lifespan                   = var.access_token_lifespan
  access_token_lifespan_for_implicit_flow = var.access_token_lifespan_for_implicit_flow

  access_code_lifespan             = var.access_code_lifespan
  access_code_lifespan_login       = var.access_code_lifespan_login
  access_code_lifespan_user_action = var.access_code_lifespan_user_action

  action_token_generated_by_user_lifespan  = var.action_token_generated_by_user_lifespan
  action_token_generated_by_admin_lifespan = var.action_token_generated_by_admin_lifespan

  oauth2_device_code_lifespan    = var.oauth2_device_code_lifespan
  oauth2_device_polling_interval = var.oauth2_device_polling_interval

  smtp_server {
    host = var.smtp_server.host
    port = var.smtp_server.port

    from                  = var.smtp_server.from
    from_display_name     = var.smtp_server.from_display_name
    reply_to              = var.smtp_server.reply_to
    reply_to_display_name = var.smtp_server.reply_to_display_name
    starttls              = var.smtp_server.starttls
    ssl                   = var.smtp_server.ssl

    auth {
      username = var.smtp_server.auth.username
      password = var.smtp_server.auth.password
    }
  }

  internationalization {
    supported_locales = var.internationalization.supported_locales
    default_locale    = var.internationalization.default_locale
  }

  security_defenses {
    headers {
      content_security_policy   = var.security_defenses.headers.content_security_policy
      x_frame_options           = var.security_defenses.headers.x_frame_options
      x_content_type_options    = var.security_defenses.headers.x_content_type_options
      x_robots_tag              = var.security_defenses.headers.x_robots_tag
      x_xss_protection          = var.security_defenses.headers.x_xss_protection
      strict_transport_security = var.security_defenses.headers.strict_transport_security
      referrer_policy           = var.security_defenses.headers.referrer_policy
    }

    brute_force_detection {
      failure_reset_time_seconds       = var.security_defenses.brute_force_detection.failure_reset_time_seconds
      max_failure_wait_seconds         = var.security_defenses.brute_force_detection.max_failure_wait_seconds
      max_login_failures               = var.security_defenses.brute_force_detection.max_login_failures
      max_temporary_lockouts           = var.security_defenses.brute_force_detection.max_temporary_lockouts
      minimum_quick_login_wait_seconds = var.security_defenses.brute_force_detection.minimum_quick_login_wait_seconds
      permanent_lockout                = var.security_defenses.brute_force_detection.permanent_lockout
      quick_login_check_milli_seconds  = var.security_defenses.brute_force_detection.quick_login_check_milli_seconds
      wait_increment_seconds           = var.security_defenses.brute_force_detection.wait_increment_seconds
    }
  }

  otp_policy {
    type              = var.otp_policy.type
    algorithm         = var.otp_policy.algorithm
    digits            = var.otp_policy.digits
    initial_counter   = var.otp_policy.initial_counter
    look_ahead_window = var.otp_policy.look_ahead_window
    period            = var.otp_policy.period
  }

  web_authn_policy {
    relying_party_entity_name         = var.web_authn_policy.relying_party_entity_name
    relying_party_id                  = var.web_authn_policy.relying_party_id
    signature_algorithms              = var.web_authn_policy.signature_algorithms
    attestation_conveyance_preference = var.web_authn_policy.attestation_conveyance_preference
    authenticator_attachment          = var.web_authn_policy.authenticator_attachment
    require_resident_key              = var.web_authn_policy.require_resident_key
    user_verification_requirement     = var.web_authn_policy.user_verification_requirement
    create_timeout                    = var.web_authn_policy.create_timeout
    avoid_same_authenticator_register = var.web_authn_policy.avoid_same_authenticator_register
    acceptable_aaguids                = var.web_authn_policy.acceptable_aaguids
    extra_origins                     = var.web_authn_policy.extra_origins
  }

  web_authn_passwordless_policy {
    relying_party_entity_name         = var.web_authn_passwordless_policy.relying_party_entity_name
    relying_party_id                  = var.web_authn_passwordless_policy.relying_party_id
    signature_algorithms              = var.web_authn_passwordless_policy.signature_algorithms
    attestation_conveyance_preference = var.web_authn_passwordless_policy.attestation_conveyance_preference
    authenticator_attachment          = var.web_authn_passwordless_policy.authenticator_attachment
    require_resident_key              = var.web_authn_passwordless_policy.require_resident_key
    user_verification_requirement     = var.web_authn_passwordless_policy.user_verification_requirement
    create_timeout                    = var.web_authn_passwordless_policy.create_timeout
    avoid_same_authenticator_register = var.web_authn_passwordless_policy.avoid_same_authenticator_register
    acceptable_aaguids                = var.web_authn_passwordless_policy.acceptable_aaguids
    extra_origins                     = var.web_authn_passwordless_policy.extra_origins
  }

  terraform_deletion_protection = var.terraform_deletion_protection
}

# Setup scopes for clients
resource "keycloak_openid_client_scope" "this" {
  for_each = var.client_scopes
  realm_id = keycloak_realm.this.id

  name                   = each.key
  description            = each.value.description
  include_in_token_scope = each.value.include_in_token_scope
  consent_screen_text    = each.value.consent_screen_text
  gui_order              = each.value.gui_order
}

# Setup default client scopes for the realm
resource "keycloak_realm_default_client_scopes" "this" {
  realm_id = keycloak_realm.this.id

  default_scopes = local.default_scopes
}

# Setup optional client scopes for the realm
resource "keycloak_realm_optional_client_scopes" "this" {
  realm_id = keycloak_realm.this.id

  optional_scopes = local.optional_scopes
}

# Setup default roles for the realm
resource "keycloak_default_roles" "this" {
  realm_id = keycloak_realm.this.id

  default_roles = var.default_roles
}

# Setup default roles for the realm
resource "keycloak_role" "this" {
  for_each = var.roles
  realm_id = keycloak_realm.this.id

  name        = each.key
  description = each.value.description
  attributes  = each.value.attributes

  import = each.value.import
}
