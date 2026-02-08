variable "realm" {
  type        = string
  description = <<-EOM
  The name of the realm. This is unique across Keycloak. This will also be used
  as the realm's internal ID within Keycloak.
  EOM
}
variable "enabled" {
  type        = bool
  description = <<-EOM
  When false, users and clients will not be able to access this realm.
  EOM

  default = true
}

variable "display_name" {
  type        = string
  description = <<-EOM
  The display name for the realm that is shown when logging in to the admin
  console.
  EOM

  default = null
}

variable "display_name_html" {
  type        = string
  description = <<-EOM
  The display name for the realm that is rendered as HTML on the screen when
  logging in to the admin console.
  EOM

  default = null
}

variable "user_managed_access" {
  type        = string
  description = <<-EOM
  When true, users are allowed to manage their own resources.
  EOM

  default = false
}

variable "organizations_enabled" {
  type        = string
  description = <<-EOM
  When true, organization support is enabled. Defaults to false.
  EOM

  default = false
}

variable "attributes" {
  type        = map(string)
  description = <<-EOM
  A map of custom attributes to add to the realm.
  EOM

  default = null
}

variable "internal_id" {
  type        = string
  description = <<-EOM
  When specified, this will be used as the realm's internal ID within Keycloak.
  When not specified, the realm's internal ID will be set to the realm's name.
  EOM

  default = null
}

variable "terraform_deletion_protection" {
  type        = bool
  description = <<-EOM
  When set to true, the realm cannot be deleted.
  EOM

  default = true
}

# Login Settings
# The following arguments are all booleans, and can be found in the "Login" tab
# within the realm settings. If any of these arguments are not specified, they
# will default to Keycloak's default settings.
variable "registration_allowed" {
  type        = bool
  description = <<-EOM
  When true, user registration will be enabled, and a link for registration will
  be displayed on the login page.
  EOM

  default = false
}

variable "registration_email_as_username" {
  type        = bool
  description = <<-EOM
  When true, the user's email will be used as their username during registration.
  EOM

  default = true
}

variable "edit_username_allowed" {
  type        = bool
  description = <<-EOM
  When true, the username field is editable.
  EOM

  default = false
}

variable "reset_password_allowed" {
  type        = bool
  description = <<-EOM
  When true, a "forgot password" link will be displayed on the login page.
  EOM

  default = true
}

variable "remember_me" {
  type        = bool
  description = <<-EOM
  When true, a "remember me" checkbox will be displayed on the login page, and
  the user's session will not expire between browser restarts.
  EOM

  default = true
}

variable "verify_email" {
  type        = bool
  description = <<-EOM
  When true, users are required to verify their email address after registration
  and after email address changes.
  EOM

  default = true
}

variable "login_with_email_allowed" {
  type        = bool
  description = <<-EOM
  When true, users may log in with their email address.
  EOM

  default = true
}

variable "duplicate_emails_allowed" {
  type        = bool
  description = <<-EOM
  When true, multiple users will be allowed to have the same email address. This
  argument must be set to false if `login_with_email_allowed` is set to true.
  EOM

  default = false
}

variable "ssl_required" {
  type        = string
  description = <<-EOM
  Can be one of following values: 'none, 'external' or 'all'
  EOM

  default = "external"
}

# Themes
# The following arguments can be used to configure themes for the realm. Custom
# themes can be specified here. If any of these arguments are not specified,
# they will default to Keycloak's default settings. Typically, the keycloak
# theme is used by default.
variable "login_theme" {
  type        = string
  description = <<-EOM
  Used for the login, forgot password, and registration pages.
  EOM

  default = ""
}

variable "account_theme" {
  type        = string
  description = <<-EOM
  Used for account management pages.
  EOM

  default = ""
}

variable "admin_theme" {
  type        = string
  description = <<-EOM
  Used for the admin console.
  EOM

  default = ""
}

variable "email_theme" {
  type        = string
  description = <<-EOM
  Used for emails that are sent by Keycloak.
  EOM

  default = ""
}

# Tokens
# The following arguments can be found in the "Tokens" tab within the realm
# settings. Each of these settings are top level arguments for the
# keycloak_realm resource.
variable "default_signature_algorithm" {
  type        = string
  description = <<-EOM
  Default algorithm used to sign tokens for the realm.
  EOM

  default = "RS256"
}

variable "revoke_refresh_token" {
  type        = bool
  description = <<-EOM
  If enabled a refresh token can only be used number of times specified in
  'refresh_token_max_reuse' before they are revoked. If unspecified, refresh
  tokens can be reused.
  EOM

  default = false
}

variable "refresh_token_max_reuse" {
  type        = number
  description = <<-EOM
  Maximum number of times a refresh token can be reused before they are revoked.
  If unspecified and 'revoke_refresh_token' is enabled the default value is 0
  and refresh tokens can not be reused.
  EOM

  default = 0
}

# The arguments below should be specified as Go duration strings. They will
# default to Keycloak's default settings.
variable "sso_session_idle_timeout" {
  type        = string
  description = <<-EOM
  The amount of time a session can be idle before it expires.
  EOM

  # 30 days
  default = "730h"
}

variable "sso_session_max_lifespan" {
  type        = string
  description = <<-EOM
  The maximum amount of time before a session expires regardless of activity.
  EOM

  # ~6 months
  default = "4392h"
}

variable "sso_session_idle_timeout_remember_me" {
  type        = string
  description = <<-EOM
  Similar to `sso_session_idle_timeout`, but used when a user clicks "Remember
  Me". If not set, Keycloak will default to the value of
  `sso_session_idle_timeout`.
  EOM

  default = "0s"
}

variable "sso_session_max_lifespan_remember_me" {
  type        = string
  description = <<-EOM
  Similar to sso_session_max_lifespan, but used when a user clicks "Remember
  Me". If not set, Keycloak will default to the value of
  `sso_session_max_lifespan`.
  EOM

  default = "0s"
}

variable "offline_session_max_lifespan_enabled" {
  type        = bool
  description = <<EOM
  Enable `offline_session_max_lifespan`.
  EOM

  default = false
}

variable "offline_session_idle_timeout" {
  type        = string
  description = <<-EOM
  The amount of time an offline session can be idle before it expires.
  EOM

  # ~30days
  default = "720h"
}

variable "offline_session_max_lifespan" {
  type        = string
  description = <<-EOM
  The maximum amount of time before an offline session expires regardless of
  activity.
  EOM

  # ~60days
  default = "1440h"
}

variable "client_session_idle_timeout" {
  type        = string
  description = <<-EOM
  The amount of time a session can be idle before it expires. Users can override
  it for individual clients.
  EOM

  default = "0s"
}

variable "client_session_max_lifespan" {
  type        = number
  description = <<-EOM
  The maximum amount of time before a session expires regardless of activity.
  Users can override it for individual clients.
  EOM

  default = null
}

variable "access_token_lifespan" {
  type        = string
  description = <<-EOM
  The amount of time an access token can be used before it expires.
  EOM

  default = "1m"
}

variable "access_token_lifespan_for_implicit_flow" {
  type        = string
  description = <<-EOM
  The amount of time an access token issued with the OpenID Connect Implicit
  Flow can be used before it expires.
  EOM

  default = "15m"
}

variable "access_code_lifespan" {
  type        = string
  description = <<-EOM
  The maximum amount of time a client has to finish the authorization code flow.
  EOM

  default = "1m"
}

variable "access_code_lifespan_login" {
  type        = string
  description = <<-EOM
  The maximum amount of time a user is permitted to stay on the login page
  before the authentication process must be restarted.
  EOM

  default = "30m"
}

variable "access_code_lifespan_user_action" {
  type        = string
  description = <<-EOM
  The maximum amount of time a user has to complete login related actions, such
  as updating a password.
  EOM

  default = "5m"
}

variable "action_token_generated_by_user_lifespan" {
  type        = string
  description = <<-EOM
  The maximum time a user has to use a user-generated permit before it expires.
  EOM

  default = "5m"
}

variable "action_token_generated_by_admin_lifespan" {
  type        = string
  description = <<-EOM
  The maximum time a user has to use an admin-generated permit before it
  expires.
  EOM

  default = "12h"
}

variable "oauth2_device_code_lifespan" {
  type        = string
  description = <<-EOM
  The maximum amount of time a client has to finish the device code flow before
  it expires.
  EOM

  default = "10m"
}

# The attributes below should be specified in seconds.
variable "oauth2_device_polling_interval" {
  type        = number
  description = <<-EOM
  The minimum amount of time in seconds that the client should wait between
  polling requests to the token endpoint.
  EOM

  default = 5
}

variable "smtp_server" {
  type = object({
    host = optional(string, "")
    port = optional(number, 25)

    from                  = optional(string, "")
    from_display_name     = optional(string, "")
    reply_to              = optional(string, "")
    reply_to_display_name = optional(string, "")
    starttls              = optional(bool, false)
    ssl                   = optional(bool, false)
    auth = optional(object({
      username = optional(string, "")
      password = optional(string, "")
    }), {})
  })

  description = <<-EOM
  The smtp_server block can be used to configure the realm's SMTP settings,
  which can be found in the "Email" tab in the GUI. This block supports the
  following arguments:
  * `from`: String, The email address for the send
  * `from_display_name`: String, optional, the display name of the sender email
    address.
  * `reply_to`: String, optional, the "reply to" email address.
  * `reply_to_display_name`: String, optional, the display name of the "reply
    to" email address.
  * `starttls`: Bool, optional, when true, enables StartTLS.
  * `ssl`: Bool, optional, when true, enable ssl
  * `auth`: Object, optional, enables authentication to the SMTP server.
    Cannot be set alongside `token_auth`. This block supports the following
    arguments:
    * `username`: String, The SMTP server username
    * `password`: String, The SMTP server password
  * `auth_token`: Object, optional, enables authentication to the SMTP server
    through OAUTH2. Cannot be set alongside `auth`. This block supports the
    following arguments:
    * `username`: String, the SMTP server username.
    * `url`: String, the auth token URL.
    * `client_id`: String, The auth token client ID.
    * `client_secret`: String, the auth token client secret.
    * `scope`: String, the auth token scope.
  EOM

  sensitive = true
  default   = {}
}

variable "internationalization" {
  type = object({
    supported_locales = list(string)
    default_locale    = string
  })
  description = <<-EOM
  Object, internationalization support can be configured by using the
  internationalization block, which supports the following arguments:
  * `supported_locales`: List of string, a list of ISO 639-1 locale codes that
    the realm should support.
  * `default_locale`: String, the locale to use by default. This locale code
    must be present within the supported_locales list.
  EOM

  default = {
    supported_locales = [
      "en"
    ]
    default_locale = "en"
  }
}

variable "security_defenses" {
  type = object({
    headers = optional(object({
      content_security_policy   = optional(string)
      x_frame_options           = optional(string)
      x_content_type_options    = optional(string)
      x_robots_tag              = optional(string)
      x_xss_protection          = optional(string)
      strict_transport_security = optional(string)
      referrer_policy           = optional(string)
    }), {})
    brute_force_detection = optional(object({
      failure_reset_time_seconds       = optional(number)
      max_failure_wait_seconds         = optional(number)
      max_login_failures               = optional(number)
      max_temporary_lockouts           = optional(number)
      minimum_quick_login_wait_seconds = optional(number)
      permanent_lockout                = optional(bool)
      quick_login_check_milli_seconds  = optional(number)
      wait_increment_seconds           = optional(number)
    }), {})
  })

  description = <<-EOM
  The security_defenses argument can be used to configure the realm's security
  defenses via the `headers` and `brute_force_detection` sub-blocks. Object
  support following attributes:
  * `headers`: Object, block supports the following arguments:
    * `content_security_policy`: Set of string, optional, sets the Content
      Security Policy, which can be used for prevent pages from being included
      by non-origin iframes. More information can be found in the W3C-CSP Abstract.
    * `x_frame_options`: Set of string, optional, the x-frame-option, which can
      be used to prevent pages from being included by non-origin iframes. More
      information can be found in the RFC7034
    * `x_content_type_options`: Set of string, optional, sets the
      X-Content-Type-Options, which can be used for prevent MIME-sniffing a
      response away from the declared content-type
    * `x_robots_tag`: Set of string, optional, prevent pages from appearing in
      search engines.
    * `x_xss_protection`: Set of string, optional, this header configures the
      Cross-site scripting (XSS) filter in your browser.
    * `strict_transport_security`: Set of string, optional, the
      Script-Transport-Security HTTP header tells browsers to always use HTTPS.
    * `referrer_policy`: Set of string, optional, the Referrer-Policy HTTP
      header controls how much referrer information (sent with the Referer header)
      should be included with requests.
  * `brute_force_detection`: Object supports the following arguments:
    * `permanent_lockout`: boolean, optional, when true, this will lock the user
      permanently when the user exceeds the maximum login failures.
    * `max_temporary_lockouts`: number, optional, How many temporary lockouts
      are permitted before a user is permanently locked out. permanent_lockout
      needs to be true.
    * `max_login_failures`: number, optional, how many failures before wait is
      triggered.
    * `wait_increment_seconds`: number, optional, this represents the amount of
      time a user should be locked out when the login failure threshold has been
      met.
    * `quick_login_check_milli_seconds`: number, optional, configures the amount
      of time, in milliseconds, for consecutive failures to lock a user out.
    * `minimum_quick_login_wait_seconds`: number, optional, How long to wait
      after a quick login failure.
    * `max_failure_wait_seconds`: number, optional, max. time a user will be
      locked out.
    * `failure_reset_time_seconds`: number, optional, when will failure count be
      reset?
  EOM

  default = {
    brute_force_detection = {
      failure_reset_time_seconds       = 43200
      max_failure_wait_seconds         = 900
      max_login_failures               = 30
      max_temporary_lockouts           = 0
      minimum_quick_login_wait_seconds = 60
      permanent_lockout                = false
      quick_login_check_milli_seconds  = 1000
      wait_increment_seconds           = 60
    }
    headers = {
      content_security_policy   = "frame-src 'self'; frame-ancestors 'self'; object-src 'none';"
      referrer_policy           = "no-referrer"
      strict_transport_security = "max-age=31536000; includeSubDomains"
      x_content_type_options    = "nosniff"
      x_frame_options           = "SAMEORIGIN"
      x_robots_tag              = "none"
      x_xss_protection          = "1; mode=block"
    }
  }

}

# Authentication Settings
#
variable "password_policy" {
  type        = string
  description = <<-EOM
  The password policy for users within the realm.
  EOM

  default = <<-EOM
  digits(1) and upperCase(1) and lowerCase(1) and specialChars(1) and length(14) and notUsername and notEmail and notContainsUsername()
  EOM
}

variable "otp_policy" {
  type = object({
    type              = optional(string)
    algorithm         = optional(string)
    digits            = optional(number)
    initial_counter   = optional(number)
    look_ahead_window = optional(number)
    period            = optional(number)
  })
  description = <<-EOM
  The `otp_policy` block with following arguments can be found in the "OTP
  Policy" tab within the realm settings. Support following attributes:
  * `type`: String, optional, One Time Password Type, supported Values are totp
    for Time-Based One Time Password and hotp for Counter Based.
  * algorithm`: String, optional, what hashing algorithm should be used to
    generate the OTP, Valid options are HmacSHA1,HmacSHA256 and HmacSHA512.
  * `digits`: Number, optional, how many digits the OTP have.
  * `initial_counter`: Number, optional, what should the initial counter value
    be.
  * `look_ahead_window`: Number, optional, how far ahead should the server look
    just in case the token generator and server are out of time sync or counter
    sync.
  * `period`: Number, optional, how many seconds should an OTP token be valid.
  EOM

  default = {
    algorithm         = "HmacSHA1"
    digits            = 6
    initial_counter   = 2
    look_ahead_window = 1
    period            = 30
    type              = "totp"
  }
}

variable "web_authn_policy" {
  type = object({
    relying_party_entity_name         = optional(string)
    relying_party_id                  = optional(string)
    signature_algorithms              = optional(set(string))
    attestation_conveyance_preference = optional(string)
    authenticator_attachment          = optional(string)
    require_resident_key              = optional(string)
    user_verification_requirement     = optional(string)
    create_timeout                    = optional(number)
    avoid_same_authenticator_register = optional(bool)
    acceptable_aaguids                = optional(set(string))
    extra_origins                     = optional(set(string))
  })
  description = <<-EOM
  The following settings can be used to modify the "WebAuthn Policy" and
  "WebAuthn Passwordless Policy" settings found within the "Authentication"
  section of the realm configuration UI. These top level attributes can be used:
  Configuration for WebAuthn Passwordless Policy authentication. Support
  following attributes:
  * `relying_party_entity_name`: String, optional, A human-readable server name
    for the WebAuthn Relying Party.
  * `relying_party_id`: String, optional, The WebAuthn relying party ID.
  * `signature_algorithms`: String, optional, A set of signature algorithms that
    should be used for the authentication assertion. Valid options at the time
    these docs were written are ES256, ES384, ES512, RS256, RS384, RS512, and RS1.
  * `attestation_conveyance_preference`: String, optional, The preference of how
    to generate a WebAuthn attestation statement. Valid options are not specified,
    none, indirect, direct, or enterprise. Defaults to not specified.
  * `authenticator_attachment`: String, optional, The acceptable attachment
    pattern for the WebAuthn authenticator. Valid options are not specified,
    platform, or cross-platform. Defaults to not specified.
  * `require_resident_key`: String, optional, Specifies whether a public key
    should be created to represent the resident key. Valid options are not
    specified, Yes, or No. Defaults to not specified.
  * `user_verification_requirement`: String, optional, Specifies the policy for
    verifying a user logging in via WebAuthn. Valid options are not specified,
    required, preferred, or discouraged. Defaults to not specified.
  * `create_timeout`: Number, optional, The timeout value for creating a user's
    public key credential in seconds. When set to 0, this timeout option is not
    adapted.
  * `avoid_same_authenticator_register`: Boolean, optional, When true, Keycloak
    will avoid registering the authenticator for WebAuthn if it has already been
    registered.
  * `acceptable_aaguids`: String, optional, A set of AAGUIDs for which an
    authenticator can be registered.
  * `extra_origins`: String, optional, A set of extra origins for non-web
    applications.
  EOM

  default = {}
}

variable "web_authn_passwordless_policy" {
  type = object({
    relying_party_entity_name         = optional(string)
    relying_party_id                  = optional(string)
    signature_algorithms              = optional(set(string))
    attestation_conveyance_preference = optional(string)
    authenticator_attachment          = optional(string)
    require_resident_key              = optional(string)
    user_verification_requirement     = optional(string)
    create_timeout                    = optional(number)
    avoid_same_authenticator_register = optional(bool)
    acceptable_aaguids                = optional(set(string))
    extra_origins                     = optional(set(string))
  })
  description = <<-EOM
  Configuration for WebAuthn Passwordless Policy authentication. Support
  following attributes:
  * `relying_party_entity_name`: String, optional, A human-readable server name
    for the WebAuthn Relying Party.
  * `relying_party_id`: String, optional, The WebAuthn relying party ID.
  * `signature_algorithms`: String, optional, A set of signature algorithms that
    should be used for the authentication assertion. Valid options at the time
    these docs were written are ES256, ES384, ES512, RS256, RS384, RS512, and RS1.
  * `attestation_conveyance_preference`: String, optional, The preference of how
    to generate a WebAuthn attestation statement. Valid options are not specified,
    none, indirect, direct, or enterprise. Defaults to not specified.
  * `authenticator_attachment`: String, optional, The acceptable attachment
    pattern for the WebAuthn authenticator. Valid options are not specified,
    platform, or cross-platform. Defaults to not specified.
  * `require_resident_key`: String, optional, Specifies whether a public key
    should be created to represent the resident key. Valid options are not
    specified, Yes, or No. Defaults to not specified.
  * `user_verification_requirement`: String, optional, Specifies the policy for
    verifying a user logging in via WebAuthn. Valid options are not specified,
    required, preferred, or discouraged. Defaults to not specified.
  * `create_timeout`: Number, optional, The timeout value for creating a user's
    public key credential in seconds. When set to 0, this timeout option is not
    adapted.
  * `avoid_same_authenticator_register`: Boolean, optional, When true, Keycloak
    will avoid registering the authenticator for WebAuthn if it has already been
    registered.
  * `acceptable_aaguids`: String, optional, A set of AAGUIDs for which an
    authenticator can be registered.
  * `extra_origins`: String, optional, A set of extra origins for non-web
    applications.
  EOM


  default = {}
}
