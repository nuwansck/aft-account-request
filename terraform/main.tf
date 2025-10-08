module "sandbox" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "lz-shared@vmgeeks.com"
    AccountName               = "LZ-Shared"
    ManagedOrganizationalUnit = "Infrastructure"
    SSOUserEmail              = "lz-shared@vmgeeks.com"
    SSOUserFirstName          = "LZ"
    SSOUserLastName           = "Shared"
  }

  account_tags = {
    "Environment" = "Shared"
  }

  change_management_parameters = {
    change_requested_by = "VMGeeks"
    change_reason       = "AWS Control Tower Account Factory for Terraform"
  }

  custom_fields = {
    group = "prod"
  }

  account_customizations_name = "LZ-Shared"
}
