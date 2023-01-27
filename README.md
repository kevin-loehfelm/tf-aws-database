## Requirements

No requirements.

## Providers

The following providers are used by this module:

- <a name="provider_terraform"></a> [terraform](#provider\_terraform)

## Modules

The following Modules are called:

### <a name="module_db"></a> [db](#module\_db)

Source: terraform-aws-modules/rds/aws

Version:

## Resources

The following resources are used by this module:

- [terraform_remote_state.network](https://registry.terraform.io/providers/hashicorp/terraform/latest/docs/data-sources/remote_state) (data source)

## Required Inputs

No required inputs.

## Optional Inputs

The following input variables are optional (have default values):

### <a name="input_enable_database"></a> [enable\_database](#input\_enable\_database)

Description: Enable creation of RDS database

Type: `bool`

Default: `false`

### <a name="input_label"></a> [label](#input\_label)

Description: Resource label

Type: `string`

Default: `"demo"`

### <a name="input_skip_final_snapshot"></a> [skip\_final\_snapshot](#input\_skip\_final\_snapshot)

Description: Skip final snapshot when removing RDS instance(s)

Type: `bool`

Default: `true`

## Outputs

The following outputs are exported:

### <a name="output_endpoint"></a> [endpoint](#output\_endpoint)

Description: RDS Endpoint

### <a name="output_label"></a> [label](#output\_label)

Description: RDS resource label
