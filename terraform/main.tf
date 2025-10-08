module "sandbox" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "lz-prod@vmgeeks.com"
    AccountName               = "LZ-Prod"
    ManagedOrganizationalUnit = "Infrastructure"
    SSOUserEmail              = "lz-prod@vmgeeks.com"
    SSOUserFirstName          = "LZ"
    SSOUserLastName           = "Prod"
  }

  account_tags = {
    "Environment" = "Prod"
  }

  change_management_parameters = {
    change_requested_by = "VMGeeks"
    change_reason       = "AWS Control Tower Account Factory for Terraform"
  }

  custom_fields = {
    group = "prod"
  }

  account_customizations_name = "LZ-Prod"
}
