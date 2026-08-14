kaka = {
  topa = {
    name     = "jackey_rg"
    location = "eastus"

  }
}

kantivnet = {
  topa1 = {
    name          = "jackey_vnet"
    location      = "eastus"
    rg_name       = "jackey_rg"
    address_space = ["10.0.0.0/16"]
  }
}

kantisubnet = {
  topa2 = {
    name             = "jackey_subnet"
    location         = "eastus"
    rg_name          = "jackey_rg"
    vnet_name        = "jackey_vnet"
    address_prefixes = ["10.0.1.0/24"]
  }
}

kantipip = {
  topa3 = {
    name     = "jackey_pip"
    location = "eastus"
    rg_name  = "jackey_rg"
  }
}

kantinic = {
  topa4 = {
    nic_name       = "jackey_nic"
    location       = "eastus"
    rg_name        = "jackey_rg"
    public_ip_name = "jackey_pip"

  }
}

