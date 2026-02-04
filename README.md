<!-- markdownlint-disable -->

# 👋 Welcome to OpenTofu Module Gitlab User

<center>

> ⚠️ IMPORTANT !
>
> Main repo is on [framagit.org](https://framagit.org/rdeville-public/opentofu/gitlab-user).
>
> On other online git platforms, they are just mirror of the main repo.
>
> Any issues, pull/merge requests, etc., might not be considered on those other
> platforms.

</center>

---

<center>

[![Licenses: (MIT OR BEERWARE)][license_badge]][license_url]
[![Changelog][changelog_badge]][changelog_badge_url]
[![Release][release_badge]][release_badge_url]

</center>

[release_badge]: https://framagit.org/rdeville-public/opentofu/gitlab-user/-/badges/release.svg
[release_badge_url]: https://framagit.org/rdeville-public/opentofu/gitlab-user/-/releases/
[license_badge]: https://img.shields.io/badge/Licenses-MIT%20OR%20BEERWARE-blue
[license_url]: https://framagit.org/rdeville-public/opentofu/gitlab-user/blob/main/LICENSE
[changelog_badge]: https://img.shields.io/badge/Changelog-Python%20Semantic%20Release-yellow
[changelog_badge_url]: https://github.com/python-semantic-release/python-semantic-release

OpenTofu modules allowing to manage gitlab user configuration.

---

## 🚀 Usage

### Deploy a Realm with only required variable

```hcl
module "realm" {
  source = "git::https://framagit.org/rdeville-public/opentofu/keycloak-realm.git"

  # Required variable
  realm = "My realm"

  smtp_server = {
    from = "contact@domain.tld"
    host = "smt.domain.tld"
  }
}
```

<!-- BEGIN TF-DOCS -->
## ⚙️ Module Content

<details><summary>Click to reveal</summary>

### Table of Content

* [Requirements](#requirements)
* [Resources](#resources)
* [Inputs](#inputs)
  * [Required Inputs](#required-inputs)
  * [Optional Inputs](#optional-inputs)
* [Outputs](#outputs)

### Requirements

* [opentofu](https://opentofu.org/docs/):
  `>= 1.8, < 2.0`
* [keycloak](https://search.opentofu.org/provider/keycloak/keycloak/):
  `5.6.0`

### Resources

* [resource.keycloak_realm.this](https://registry.terraform.io/providers/keycloak/keycloak/5.6.0/docs/resources/realm)
  > Full Realm configuration

<!-- markdownlint-capture -->
### Inputs

<!-- markdownlint-disable -->
#### Required Inputs

* [realm](#realm)

##### `realm`

The name of the realm. This is unique across Keycloak. This will also be used
as the realm's internal ID within Keycloak.

<div style="display:inline-block;width:100%;">
<div style="float:left;border-color:#FFFFFF;width:75%;">
<details><summary>Type</summary>

```hcl
string
```

</details>
</div>
</div>

#### Optional Inputs

* [enabled](#enabled)
* [display_name](#display_name)
* [display_name_html](#display_name_html)
* [user_managed_access](#user_managed_access)
* [organizations_enabled](#organizations_enabled)
* [attributes](#attributes)
* [internal_id](#internal_id)
* [terraform_deletion_protection](#terraform_deletion_protection)
* [registration_allowed](#registration_allowed)
* [registration_email_as_username](#registration_email_as_username)
* [edit_username_allowed](#edit_username_allowed)
* [reset_password_allowed](#reset_password_allowed)
* [remember_me](#remember_me)
* [verify_email](#verify_email)
* [login_with_email_allowed](#login_with_email_allowed)
* [duplicate_emails_allowed](#duplicate_emails_allowed)
* [ssl_required](#ssl_required)
* [login_theme](#login_theme)
* [account_theme](#account_theme)
* [admin_theme](#admin_theme)
* [email_theme](#email_theme)
* [default_signature_algorithm](#default_signature_algorithm)
* [revoke_refresh_token](#revoke_refresh_token)
* [refresh_token_max_reuse](#refresh_token_max_reuse)
* [sso_session_idle_timeout](#sso_session_idle_timeout)
* [sso_session_max_lifespan](#sso_session_max_lifespan)
* [sso_session_idle_timeout_remember_me](#sso_session_idle_timeout_remember_me)
* [sso_session_max_lifespan_remember_me](#sso_session_max_lifespan_remember_me)
* [offline_session_max_lifespan_enabled](#offline_session_max_lifespan_enabled)
* [offline_session_idle_timeout](#offline_session_idle_timeout)
* [offline_session_max_lifespan](#offline_session_max_lifespan)
* [client_session_idle_timeout](#client_session_idle_timeout)
* [client_session_max_lifespan](#client_session_max_lifespan)
* [access_token_lifespan](#access_token_lifespan)
* [access_token_lifespan_for_implicit_flow](#access_token_lifespan_for_implicit_flow)
* [access_code_lifespan](#access_code_lifespan)
* [access_code_lifespan_login](#access_code_lifespan_login)
* [access_code_lifespan_user_action](#access_code_lifespan_user_action)
* [action_token_generated_by_user_lifespan](#action_token_generated_by_user_lifespan)
* [action_token_generated_by_admin_lifespan](#action_token_generated_by_admin_lifespan)
* [oauth2_device_code_lifespan](#oauth2_device_code_lifespan)
* [oauth2_device_polling_interval](#oauth2_device_polling_interval)
* [smtp_server](#smtp_server)
* [internationalization](#internationalization)
* [security_defenses](#security_defenses)
* [password_policy](#password_policy)
* [otp_policy](#otp_policy)
* [web_authn_policy](#web_authn_policy)
* [web_authn_passwordless_policy](#web_authn_passwordless_policy)


##### `enabled`

When false, users and clients will not be able to access this realm.

<details style="width: 100%;display: inline-block">
  <summary>Type & Default</summary>
  <div style="height: 1em"></div>
  <div style="width:64%; float:left;">
  <p style="border-bottom: 1px solid #333333;">Type</p>

  ```hcl
  bool
  ```

  </div>
  <div style="width:34%;float:right;">
  <p style="border-bottom: 1px solid #333333;">Default</p>

  ```hcl
  true
  ```

  </div>
</details>

##### `display_name`

The display name for the realm that is shown when logging in to the admin
console.

<details style="width: 100%;display: inline-block">
  <summary>Type & Default</summary>
  <div style="height: 1em"></div>
  <div style="width:64%; float:left;">
  <p style="border-bottom: 1px solid #333333;">Type</p>

  ```hcl
  string
  ```

  </div>
  <div style="width:34%;float:right;">
  <p style="border-bottom: 1px solid #333333;">Default</p>

  ```hcl
  null
  ```

  </div>
</details>

##### `display_name_html`

The display name for the realm that is rendered as HTML on the screen when
logging in to the admin console.

<details style="width: 100%;display: inline-block">
  <summary>Type & Default</summary>
  <div style="height: 1em"></div>
  <div style="width:64%; float:left;">
  <p style="border-bottom: 1px solid #333333;">Type</p>

  ```hcl
  string
  ```

  </div>
  <div style="width:34%;float:right;">
  <p style="border-bottom: 1px solid #333333;">Default</p>

  ```hcl
  null
  ```

  </div>
</details>

##### `user_managed_access`

When true, users are allowed to manage their own resources.

<details style="width: 100%;display: inline-block">
  <summary>Type & Default</summary>
  <div style="height: 1em"></div>
  <div style="width:64%; float:left;">
  <p style="border-bottom: 1px solid #333333;">Type</p>

  ```hcl
  string
  ```

  </div>
  <div style="width:34%;float:right;">
  <p style="border-bottom: 1px solid #333333;">Default</p>

  ```hcl
  false
  ```

  </div>
</details>

##### `organizations_enabled`

When true, organization support is enabled. Defaults to false.

<details style="width: 100%;display: inline-block">
  <summary>Type & Default</summary>
  <div style="height: 1em"></div>
  <div style="width:64%; float:left;">
  <p style="border-bottom: 1px solid #333333;">Type</p>

  ```hcl
  string
  ```

  </div>
  <div style="width:34%;float:right;">
  <p style="border-bottom: 1px solid #333333;">Default</p>

  ```hcl
  true
  ```

  </div>
</details>

##### `attributes`

A map of custom attributes to add to the realm.

<details style="width: 100%;display: inline-block">
  <summary>Type & Default</summary>
  <div style="height: 1em"></div>
  <div style="width:64%; float:left;">
  <p style="border-bottom: 1px solid #333333;">Type</p>

  ```hcl
  map(string)
  ```

  </div>
  <div style="width:34%;float:right;">
  <p style="border-bottom: 1px solid #333333;">Default</p>

  ```hcl
  null
  ```

  </div>
</details>

##### `internal_id`

When specified, this will be used as the realm's internal ID within Keycloak.
When not specified, the realm's internal ID will be set to the realm's name.

<details style="width: 100%;display: inline-block">
  <summary>Type & Default</summary>
  <div style="height: 1em"></div>
  <div style="width:64%; float:left;">
  <p style="border-bottom: 1px solid #333333;">Type</p>

  ```hcl
  string
  ```

  </div>
  <div style="width:34%;float:right;">
  <p style="border-bottom: 1px solid #333333;">Default</p>

  ```hcl
  null
  ```

  </div>
</details>

##### `terraform_deletion_protection`

When set to true, the realm cannot be deleted.

<details style="width: 100%;display: inline-block">
  <summary>Type & Default</summary>
  <div style="height: 1em"></div>
  <div style="width:64%; float:left;">
  <p style="border-bottom: 1px solid #333333;">Type</p>

  ```hcl
  bool
  ```

  </div>
  <div style="width:34%;float:right;">
  <p style="border-bottom: 1px solid #333333;">Default</p>

  ```hcl
  true
  ```

  </div>
</details>

##### `registration_allowed`

When true, user registration will be enabled, and a link for registration will
be displayed on the login page.

<details style="width: 100%;display: inline-block">
  <summary>Type & Default</summary>
  <div style="height: 1em"></div>
  <div style="width:64%; float:left;">
  <p style="border-bottom: 1px solid #333333;">Type</p>

  ```hcl
  bool
  ```

  </div>
  <div style="width:34%;float:right;">
  <p style="border-bottom: 1px solid #333333;">Default</p>

  ```hcl
  false
  ```

  </div>
</details>

##### `registration_email_as_username`

When true, the user's email will be used as their username during registration.

<details style="width: 100%;display: inline-block">
  <summary>Type & Default</summary>
  <div style="height: 1em"></div>
  <div style="width:64%; float:left;">
  <p style="border-bottom: 1px solid #333333;">Type</p>

  ```hcl
  bool
  ```

  </div>
  <div style="width:34%;float:right;">
  <p style="border-bottom: 1px solid #333333;">Default</p>

  ```hcl
  true
  ```

  </div>
</details>

##### `edit_username_allowed`

When true, the username field is editable.

<details style="width: 100%;display: inline-block">
  <summary>Type & Default</summary>
  <div style="height: 1em"></div>
  <div style="width:64%; float:left;">
  <p style="border-bottom: 1px solid #333333;">Type</p>

  ```hcl
  bool
  ```

  </div>
  <div style="width:34%;float:right;">
  <p style="border-bottom: 1px solid #333333;">Default</p>

  ```hcl
  false
  ```

  </div>
</details>

##### `reset_password_allowed`

When true, a "forgot password" link will be displayed on the login page.

<details style="width: 100%;display: inline-block">
  <summary>Type & Default</summary>
  <div style="height: 1em"></div>
  <div style="width:64%; float:left;">
  <p style="border-bottom: 1px solid #333333;">Type</p>

  ```hcl
  bool
  ```

  </div>
  <div style="width:34%;float:right;">
  <p style="border-bottom: 1px solid #333333;">Default</p>

  ```hcl
  true
  ```

  </div>
</details>

##### `remember_me`

When true, a "remember me" checkbox will be displayed on the login page, and
the user's session will not expire between browser restarts.

<details style="width: 100%;display: inline-block">
  <summary>Type & Default</summary>
  <div style="height: 1em"></div>
  <div style="width:64%; float:left;">
  <p style="border-bottom: 1px solid #333333;">Type</p>

  ```hcl
  bool
  ```

  </div>
  <div style="width:34%;float:right;">
  <p style="border-bottom: 1px solid #333333;">Default</p>

  ```hcl
  true
  ```

  </div>
</details>

##### `verify_email`

When true, users are required to verify their email address after registration
and after email address changes.

<details style="width: 100%;display: inline-block">
  <summary>Type & Default</summary>
  <div style="height: 1em"></div>
  <div style="width:64%; float:left;">
  <p style="border-bottom: 1px solid #333333;">Type</p>

  ```hcl
  bool
  ```

  </div>
  <div style="width:34%;float:right;">
  <p style="border-bottom: 1px solid #333333;">Default</p>

  ```hcl
  true
  ```

  </div>
</details>

##### `login_with_email_allowed`

When true, users may log in with their email address.

<details style="width: 100%;display: inline-block">
  <summary>Type & Default</summary>
  <div style="height: 1em"></div>
  <div style="width:64%; float:left;">
  <p style="border-bottom: 1px solid #333333;">Type</p>

  ```hcl
  bool
  ```

  </div>
  <div style="width:34%;float:right;">
  <p style="border-bottom: 1px solid #333333;">Default</p>

  ```hcl
  true
  ```

  </div>
</details>

##### `duplicate_emails_allowed`

When true, multiple users will be allowed to have the same email address. This
argument must be set to false if `login_with_email_allowed` is set to true.

<details style="width: 100%;display: inline-block">
  <summary>Type & Default</summary>
  <div style="height: 1em"></div>
  <div style="width:64%; float:left;">
  <p style="border-bottom: 1px solid #333333;">Type</p>

  ```hcl
  bool
  ```

  </div>
  <div style="width:34%;float:right;">
  <p style="border-bottom: 1px solid #333333;">Default</p>

  ```hcl
  false
  ```

  </div>
</details>

##### `ssl_required`

Can be one of following values: 'none, 'external' or 'all'

<details style="width: 100%;display: inline-block">
  <summary>Type & Default</summary>
  <div style="height: 1em"></div>
  <div style="width:64%; float:left;">
  <p style="border-bottom: 1px solid #333333;">Type</p>

  ```hcl
  string
  ```

  </div>
  <div style="width:34%;float:right;">
  <p style="border-bottom: 1px solid #333333;">Default</p>

  ```hcl
  all
  ```

  </div>
</details>

##### `login_theme`

Used for the login, forgot password, and registration pages.

<details style="width: 100%;display: inline-block">
  <summary>Type & Default</summary>
  <div style="height: 1em"></div>
  <div style="width:64%; float:left;">
  <p style="border-bottom: 1px solid #333333;">Type</p>

  ```hcl
  string
  ```

  </div>
  <div style="width:34%;float:right;">
  <p style="border-bottom: 1px solid #333333;">Default</p>

  ```hcl
  ""
  ```

  </div>
</details>

##### `account_theme`

Used for account management pages.

<details style="width: 100%;display: inline-block">
  <summary>Type & Default</summary>
  <div style="height: 1em"></div>
  <div style="width:64%; float:left;">
  <p style="border-bottom: 1px solid #333333;">Type</p>

  ```hcl
  string
  ```

  </div>
  <div style="width:34%;float:right;">
  <p style="border-bottom: 1px solid #333333;">Default</p>

  ```hcl
  ""
  ```

  </div>
</details>

##### `admin_theme`

Used for the admin console.

<details style="width: 100%;display: inline-block">
  <summary>Type & Default</summary>
  <div style="height: 1em"></div>
  <div style="width:64%; float:left;">
  <p style="border-bottom: 1px solid #333333;">Type</p>

  ```hcl
  string
  ```

  </div>
  <div style="width:34%;float:right;">
  <p style="border-bottom: 1px solid #333333;">Default</p>

  ```hcl
  ""
  ```

  </div>
</details>

##### `email_theme`

Used for emails that are sent by Keycloak.

<details style="width: 100%;display: inline-block">
  <summary>Type & Default</summary>
  <div style="height: 1em"></div>
  <div style="width:64%; float:left;">
  <p style="border-bottom: 1px solid #333333;">Type</p>

  ```hcl
  string
  ```

  </div>
  <div style="width:34%;float:right;">
  <p style="border-bottom: 1px solid #333333;">Default</p>

  ```hcl
  ""
  ```

  </div>
</details>

##### `default_signature_algorithm`

Default algorithm used to sign tokens for the realm.

<details style="width: 100%;display: inline-block">
  <summary>Type & Default</summary>
  <div style="height: 1em"></div>
  <div style="width:64%; float:left;">
  <p style="border-bottom: 1px solid #333333;">Type</p>

  ```hcl
  string
  ```

  </div>
  <div style="width:34%;float:right;">
  <p style="border-bottom: 1px solid #333333;">Default</p>

  ```hcl
  ""
  ```

  </div>
</details>

##### `revoke_refresh_token`

If enabled a refresh token can only be used number of times specified in
'refresh_token_max_reuse' before they are revoked. If unspecified, refresh
tokens can be reused.

<details style="width: 100%;display: inline-block">
  <summary>Type & Default</summary>
  <div style="height: 1em"></div>
  <div style="width:64%; float:left;">
  <p style="border-bottom: 1px solid #333333;">Type</p>

  ```hcl
  bool
  ```

  </div>
  <div style="width:34%;float:right;">
  <p style="border-bottom: 1px solid #333333;">Default</p>

  ```hcl
  false
  ```

  </div>
</details>

##### `refresh_token_max_reuse`

Maximum number of times a refresh token can be reused before they are revoked.
If unspecified and 'revoke_refresh_token' is enabled the default value is 0
and refresh tokens can not be reused.

<details style="width: 100%;display: inline-block">
  <summary>Type & Default</summary>
  <div style="height: 1em"></div>
  <div style="width:64%; float:left;">
  <p style="border-bottom: 1px solid #333333;">Type</p>

  ```hcl
  number
  ```

  </div>
  <div style="width:34%;float:right;">
  <p style="border-bottom: 1px solid #333333;">Default</p>

  ```hcl
  0
  ```

  </div>
</details>

##### `sso_session_idle_timeout`

The amount of time a session can be idle before it expires.

<details style="width: 100%;display: inline-block">
  <summary>Type & Default</summary>
  <div style="height: 1em"></div>
  <div style="width:64%; float:left;">
  <p style="border-bottom: 1px solid #333333;">Type</p>

  ```hcl
  string
  ```

  </div>
  <div style="width:34%;float:right;">
  <p style="border-bottom: 1px solid #333333;">Default</p>

  ```hcl
  730h
  ```

  </div>
</details>

##### `sso_session_max_lifespan`

The maximum amount of time before a session expires regardless of activity.

<details style="width: 100%;display: inline-block">
  <summary>Type & Default</summary>
  <div style="height: 1em"></div>
  <div style="width:64%; float:left;">
  <p style="border-bottom: 1px solid #333333;">Type</p>

  ```hcl
  string
  ```

  </div>
  <div style="width:34%;float:right;">
  <p style="border-bottom: 1px solid #333333;">Default</p>

  ```hcl
  4392h
  ```

  </div>
</details>

##### `sso_session_idle_timeout_remember_me`

Similar to `sso_session_idle_timeout`, but used when a user clicks "Remember
Me". If not set, Keycloak will default to the value of
`sso_session_idle_timeout`.

<details style="width: 100%;display: inline-block">
  <summary>Type & Default</summary>
  <div style="height: 1em"></div>
  <div style="width:64%; float:left;">
  <p style="border-bottom: 1px solid #333333;">Type</p>

  ```hcl
  string
  ```

  </div>
  <div style="width:34%;float:right;">
  <p style="border-bottom: 1px solid #333333;">Default</p>

  ```hcl
  0s
  ```

  </div>
</details>

##### `sso_session_max_lifespan_remember_me`

Similar to sso_session_max_lifespan, but used when a user clicks "Remember
Me". If not set, Keycloak will default to the value of
`sso_session_max_lifespan`.

<details style="width: 100%;display: inline-block">
  <summary>Type & Default</summary>
  <div style="height: 1em"></div>
  <div style="width:64%; float:left;">
  <p style="border-bottom: 1px solid #333333;">Type</p>

  ```hcl
  string
  ```

  </div>
  <div style="width:34%;float:right;">
  <p style="border-bottom: 1px solid #333333;">Default</p>

  ```hcl
  0s
  ```

  </div>
</details>

##### `offline_session_max_lifespan_enabled`

  Enable `offline_session_max_lifespan`.

<details style="width: 100%;display: inline-block">
  <summary>Type & Default</summary>
  <div style="height: 1em"></div>
  <div style="width:64%; float:left;">
  <p style="border-bottom: 1px solid #333333;">Type</p>

  ```hcl
  bool
  ```

  </div>
  <div style="width:34%;float:right;">
  <p style="border-bottom: 1px solid #333333;">Default</p>

  ```hcl
  true
  ```

  </div>
</details>

##### `offline_session_idle_timeout`

The amount of time an offline session can be idle before it expires.

<details style="width: 100%;display: inline-block">
  <summary>Type & Default</summary>
  <div style="height: 1em"></div>
  <div style="width:64%; float:left;">
  <p style="border-bottom: 1px solid #333333;">Type</p>

  ```hcl
  string
  ```

  </div>
  <div style="width:34%;float:right;">
  <p style="border-bottom: 1px solid #333333;">Default</p>

  ```hcl
  720h
  ```

  </div>
</details>

##### `offline_session_max_lifespan`

The maximum amount of time before an offline session expires regardless of
activity.

<details style="width: 100%;display: inline-block">
  <summary>Type & Default</summary>
  <div style="height: 1em"></div>
  <div style="width:64%; float:left;">
  <p style="border-bottom: 1px solid #333333;">Type</p>

  ```hcl
  string
  ```

  </div>
  <div style="width:34%;float:right;">
  <p style="border-bottom: 1px solid #333333;">Default</p>

  ```hcl
  1440h
  ```

  </div>
</details>

##### `client_session_idle_timeout`

The amount of time a session can be idle before it expires. Users can override
it for individual clients.

<details style="width: 100%;display: inline-block">
  <summary>Type & Default</summary>
  <div style="height: 1em"></div>
  <div style="width:64%; float:left;">
  <p style="border-bottom: 1px solid #333333;">Type</p>

  ```hcl
  string
  ```

  </div>
  <div style="width:34%;float:right;">
  <p style="border-bottom: 1px solid #333333;">Default</p>

  ```hcl
  0s
  ```

  </div>
</details>

##### `client_session_max_lifespan`

The maximum amount of time before a session expires regardless of activity.
Users can override it for individual clients.

<details style="width: 100%;display: inline-block">
  <summary>Type & Default</summary>
  <div style="height: 1em"></div>
  <div style="width:64%; float:left;">
  <p style="border-bottom: 1px solid #333333;">Type</p>

  ```hcl
  number
  ```

  </div>
  <div style="width:34%;float:right;">
  <p style="border-bottom: 1px solid #333333;">Default</p>

  ```hcl
  null
  ```

  </div>
</details>

##### `access_token_lifespan`

The amount of time an access token can be used before it expires.

<details style="width: 100%;display: inline-block">
  <summary>Type & Default</summary>
  <div style="height: 1em"></div>
  <div style="width:64%; float:left;">
  <p style="border-bottom: 1px solid #333333;">Type</p>

  ```hcl
  string
  ```

  </div>
  <div style="width:34%;float:right;">
  <p style="border-bottom: 1px solid #333333;">Default</p>

  ```hcl
  5m
  ```

  </div>
</details>

##### `access_token_lifespan_for_implicit_flow`

The amount of time an access token issued with the OpenID Connect Implicit
Flow can be used before it expires.

<details style="width: 100%;display: inline-block">
  <summary>Type & Default</summary>
  <div style="height: 1em"></div>
  <div style="width:64%; float:left;">
  <p style="border-bottom: 1px solid #333333;">Type</p>

  ```hcl
  string
  ```

  </div>
  <div style="width:34%;float:right;">
  <p style="border-bottom: 1px solid #333333;">Default</p>

  ```hcl
  15m
  ```

  </div>
</details>

##### `access_code_lifespan`

The maximum amount of time a client has to finish the authorization code flow.

<details style="width: 100%;display: inline-block">
  <summary>Type & Default</summary>
  <div style="height: 1em"></div>
  <div style="width:64%; float:left;">
  <p style="border-bottom: 1px solid #333333;">Type</p>

  ```hcl
  string
  ```

  </div>
  <div style="width:34%;float:right;">
  <p style="border-bottom: 1px solid #333333;">Default</p>

  ```hcl
  1m
  ```

  </div>
</details>

##### `access_code_lifespan_login`

The maximum amount of time a user is permitted to stay on the login page
before the authentication process must be restarted.

<details style="width: 100%;display: inline-block">
  <summary>Type & Default</summary>
  <div style="height: 1em"></div>
  <div style="width:64%; float:left;">
  <p style="border-bottom: 1px solid #333333;">Type</p>

  ```hcl
  string
  ```

  </div>
  <div style="width:34%;float:right;">
  <p style="border-bottom: 1px solid #333333;">Default</p>

  ```hcl
  30m
  ```

  </div>
</details>

##### `access_code_lifespan_user_action`

The maximum amount of time a user has to complete login related actions, such
as updating a password.

<details style="width: 100%;display: inline-block">
  <summary>Type & Default</summary>
  <div style="height: 1em"></div>
  <div style="width:64%; float:left;">
  <p style="border-bottom: 1px solid #333333;">Type</p>

  ```hcl
  string
  ```

  </div>
  <div style="width:34%;float:right;">
  <p style="border-bottom: 1px solid #333333;">Default</p>

  ```hcl
  5m
  ```

  </div>
</details>

##### `action_token_generated_by_user_lifespan`

The maximum time a user has to use a user-generated permit before it expires.

<details style="width: 100%;display: inline-block">
  <summary>Type & Default</summary>
  <div style="height: 1em"></div>
  <div style="width:64%; float:left;">
  <p style="border-bottom: 1px solid #333333;">Type</p>

  ```hcl
  string
  ```

  </div>
  <div style="width:34%;float:right;">
  <p style="border-bottom: 1px solid #333333;">Default</p>

  ```hcl
  5m
  ```

  </div>
</details>

##### `action_token_generated_by_admin_lifespan`

The maximum time a user has to use an admin-generated permit before it
expires.

<details style="width: 100%;display: inline-block">
  <summary>Type & Default</summary>
  <div style="height: 1em"></div>
  <div style="width:64%; float:left;">
  <p style="border-bottom: 1px solid #333333;">Type</p>

  ```hcl
  string
  ```

  </div>
  <div style="width:34%;float:right;">
  <p style="border-bottom: 1px solid #333333;">Default</p>

  ```hcl
  12h
  ```

  </div>
</details>

##### `oauth2_device_code_lifespan`

The maximum amount of time a client has to finish the device code flow before
it expires.

<details style="width: 100%;display: inline-block">
  <summary>Type & Default</summary>
  <div style="height: 1em"></div>
  <div style="width:64%; float:left;">
  <p style="border-bottom: 1px solid #333333;">Type</p>

  ```hcl
  string
  ```

  </div>
  <div style="width:34%;float:right;">
  <p style="border-bottom: 1px solid #333333;">Default</p>

  ```hcl
  10m
  ```

  </div>
</details>

##### `oauth2_device_polling_interval`

The minimum amount of time in seconds that the client should wait between
polling requests to the token endpoint.

<details style="width: 100%;display: inline-block">
  <summary>Type & Default</summary>
  <div style="height: 1em"></div>
  <div style="width:64%; float:left;">
  <p style="border-bottom: 1px solid #333333;">Type</p>

  ```hcl
  number
  ```

  </div>
  <div style="width:34%;float:right;">
  <p style="border-bottom: 1px solid #333333;">Default</p>

  ```hcl
  6
  ```

  </div>
</details>

##### `smtp_server`

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

<details style="width: 100%;display: inline-block">
  <summary>Type & Default</summary>
  <div style="height: 1em"></div>
  <div style="width:64%; float:left;">
  <p style="border-bottom: 1px solid #333333;">Type</p>

  ```hcl
  object({
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
  ```

  </div>
  <div style="width:34%;float:right;">
  <p style="border-bottom: 1px solid #333333;">Default</p>

  ```hcl
  {}
  ```

  </div>
</details>

##### `internationalization`

Object, internationalization support can be configured by using the
internationalization block, which supports the following arguments:
* `supported_locales`: List of string, a list of ISO 639-1 locale codes that
  the realm should support.
* `default_locale`: String, the locale to use by default. This locale code
  must be present within the supported_locales list.

<details style="width: 100%;display: inline-block">
  <summary>Type & Default</summary>
  <div style="height: 1em"></div>
  <div style="width:64%; float:left;">
  <p style="border-bottom: 1px solid #333333;">Type</p>

  ```hcl
  object({
    supported_locales = list(string)
    default_locale    = string
  })
  ```

  </div>
  <div style="width:34%;float:right;">
  <p style="border-bottom: 1px solid #333333;">Default</p>

  ```hcl
  map[default_locale:en supported_locales:[en]]
  ```

  </div>
</details>

##### `security_defenses`

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

<details style="width: 100%;display: inline-block">
  <summary>Type & Default</summary>
  <div style="height: 1em"></div>
  <div style="width:64%; float:left;">
  <p style="border-bottom: 1px solid #333333;">Type</p>

  ```hcl
  object({
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
  ```

  </div>
  <div style="width:34%;float:right;">
  <p style="border-bottom: 1px solid #333333;">Default</p>

  ```hcl
  map[brute_force_detection:map[failure_reset_time_seconds:43200 max_failure_wait_seconds:900 max_login_failures:30 max_temporary_lockouts:0 minimum_quick_login_wait_seconds:60 permanent_lockout:false quick_login_check_milli_seconds:1000 wait_increment_seconds:60] headers:map[content_security_policy:frame-src 'self'; frame-ancestors 'self'; object-src 'none'; content_security_policy_report_only: referrer_policy:no-referrer strict_transport_security:max-age=31536000; includeSubDomains x_content_type_options:nosniff x_frame_options:SAMEORIGIN x_robots_tag:none x_xss_protection:1; mode=block]]
  ```

  </div>
</details>

##### `password_policy`

The password policy for users within the realm.

<details style="width: 100%;display: inline-block">
  <summary>Type & Default</summary>
  <div style="height: 1em"></div>
  <div style="width:64%; float:left;">
  <p style="border-bottom: 1px solid #333333;">Type</p>

  ```hcl
  string
  ```

  </div>
  <div style="width:34%;float:right;">
  <p style="border-bottom: 1px solid #333333;">Default</p>

  ```hcl
  null
  ```

  </div>
</details>

##### `otp_policy`

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

<details style="width: 100%;display: inline-block">
  <summary>Type & Default</summary>
  <div style="height: 1em"></div>
  <div style="width:64%; float:left;">
  <p style="border-bottom: 1px solid #333333;">Type</p>

  ```hcl
  object({
    type              = optional(string)
    algorithm         = optional(string)
    digits            = optional(number)
    initial_counter   = optional(number)
    look_ahead_window = optional(number)
    period            = optional(number)
  })
  ```

  </div>
  <div style="width:34%;float:right;">
  <p style="border-bottom: 1px solid #333333;">Default</p>

  ```hcl
  map[algorithm:HmacSHA1 digits:6 initial_counter:2 look_ahead_window:1 period:30 type:totp]
  ```

  </div>
</details>

##### `web_authn_policy`

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

<details style="width: 100%;display: inline-block">
  <summary>Type & Default</summary>
  <div style="height: 1em"></div>
  <div style="width:64%; float:left;">
  <p style="border-bottom: 1px solid #333333;">Type</p>

  ```hcl
  object({
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
  ```

  </div>
  <div style="width:34%;float:right;">
  <p style="border-bottom: 1px solid #333333;">Default</p>

  ```hcl
  {}
  ```

  </div>
</details>

##### `web_authn_passwordless_policy`

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

<details style="width: 100%;display: inline-block">
  <summary>Type & Default</summary>
  <div style="height: 1em"></div>
  <div style="width:64%; float:left;">
  <p style="border-bottom: 1px solid #333333;">Type</p>

  ```hcl
  object({
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
  ```

  </div>
  <div style="width:34%;float:right;">
  <p style="border-bottom: 1px solid #333333;">Default</p>

  ```hcl
  {}
  ```

  </div>
</details>
<!-- markdownlint-restore -->

### Outputs

* `realm`:
  ID of the deployed realm

</details>

<!-- END TF-DOCS -->

## 🤝 Contributing

Contributions, issues and feature requests are welcome!

Feel free to check [issues page][issues_pages].

You can also take a look at the [CONTRIBUTING.md][contributing].

[issues_pages]: https://framagit.org/rdeville-public/opentofu/gitlab-user/-/issues
[contributing]: https://framagit.org/rdeville-public/opentofu/gitlab-user/blob/main/CONTRIBUTING.md

## 👤 Maintainers

- 📧 [**Romain Deville** \<code@romaindeville.fr\>](mailto:code@romaindeville.fr)
  - Website: [https://romaindeville.fr](https://romaindeville.fr)
  - Github: [@rdeville](https://github.com/rdeville)
  - Gitlab: [@r.deville](https://gitlab.com/r.deville)
  - Framagit: [@rdeville](https://framagit.org/rdeville)

## 📝 License

Copyright © 2026

- [Romain Deville \<code@romaindeville.fr\>](code@romaindeville.fr)

This project is under following licenses (**OR**) :

- [MIT][main_license]
- [BEERWARE][beerware_license]

[main_license]: https://framagit.org/rdeville-public/opentofu/gitlab-user/blob/main/LICENSE
[beerware_license]: https://framagit.org/rdeville-public/opentofu/gitlab-user/blob/main/LICENSE.BEERWARE
