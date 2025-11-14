rgs = {
    rg1 = {
      resource_group_name = "dev-rg-1"
      location            = "East US"
      tags = {
        environment = "dev"
        project     = "project-terraformcode"
      }
    }
    rg2 = {
      resource_group_name = "dev-rg-2"
      location            = "West US"
      tags = {
        environment = "lab"
        project     = "project-terraformcode"
      }
    }
}
