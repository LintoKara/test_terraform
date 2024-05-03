# Terraform Module: Azure App Service with Staging Slots in Virtual Network

## Overview

This Terraform module creates an Azure App Service within a Virtual Network, including staging slots, adhering to best practices in code reusability and documentation.

### Modules

1. **appservice.tf**: Defines the Terraform script to create Azure App Service and an App Service Plan. This module includes:
   - Resource Group creation
   - App Service Plan creation
   - App Service creation

2. **main.tf**: Defines Azure provider and version. Azure subscription details are input to establish a connection with the Azure subscription.

3. **output.tf**: Specifies the outputs to be shown once the infrastructure is created. Outputs include App Service URL, web IPs, etc.

4. **staging.tf**: Defines the staging slot details to be created.

5. **variables.tf**: Defines all the variables and their values used in this project.

## Usage

```hcl
module "azure_app_service" {
  source = "./path/to/module"

  // Define variables here
}

Inputs
The module supports the following input variables:

example_variable: Description of the variable.

Outputs
The module provides the following outputs:

app_service_url: URL of the deployed Azure App Service.
web_ips: IP addresses associated with the web service.

Requirements
Terraform version 0.12.x or newer.
Azure provider version compatible with Terraform version.

Authors
Linto

License
This project is licensed under the MIT License.

License

This project is licensed under the MIT License.

Feel free to adjust the content as per your specific requirements and preferences.


