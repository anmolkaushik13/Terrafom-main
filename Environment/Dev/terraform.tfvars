rg-details = { 
kirti = "Brazil South" 
 }

stg-details = {
  sa1 = {
    name                     = "kirti4647392vats"
    resource_group_name      = "kirti"
    location                 = "south india"
    account_replication_type = "LRS"
  }
  sa2 = {
    name                     = "kirti7392kjfsakjfvats"
    resource_group_name      = "Mradul"
    location                 = "Brazil South"
    account_replication_type = "LRS"
  }
  sa3 = {
    name                     = "kirti7392kjisakjfvats"
    resource_group_name      = "Naresh"
    location                 = "east us"
    account_replication_type = "LRS"
  }
}

vnet-details = {
  vnet1 = {
    name                = "kirti-network"
    location            = "Brazil South"
    resource_group_name = "kirti"
    address_space       = ["10.0.0.0/16"]
  }


}

subnet-details = {
  subnet1 = {
    name                 = "kirti-subnet"
    resource_group_name  = "kirti"
    virtual_network_name = "kirti-network"
    address_prefixes     = ["10.0.0.0/24"]
    location             = "Brazil South"
    security_name        = "rule1"
    nsg_name             = "nsg1"
  }

  # subnet3 = {
  #   name                 = "kirti-subnet2"
  #   resource_group_name  = "kirti"
  #   virtual_network_name = "kirti-network"
  #   address_prefixes     = ["10.0.2.0/24"]
  #  location="Brazil South"
  #  security_name="rule3"
  #  nsg_name="nsg3"
  # }
  # subnet4 = {
  #   name                 = "kirti-subnet3"
  #   resource_group_name  = "kirti"
  #   virtual_network_name = "kirti-network"
  #   address_prefixes     = ["10.0.3.0/24"]
  #  location="Brazil South"
  #  security_name="rule4"
  #  nsg_name="nsg4"
  # }
}


vm-details = {
  Frontendvm = {
    resource_group_name = "kirti"
    location            = "Brazil South"
    size                = "Standard_F2"
    sub_name            = "kirti-subnet"
    virtual_net_name    = "kirti-network"

  }
  Backendvm = {
    resource_group_name = "kirti"
    location            = "Brazil South"
    size                = "Standard_F2"
    sub_name            = "kirti-subnet"
    virtual_net_name    = "kirti-network"
  }
}

bastion-details = {
  bas1 = {
    pip_name             = "Bation-pip"
    location             = "Brazil South"
    resource_group_name  = "kirti"
    bas_name             = "kirti-bastion"
    ip_bas_name          = "kirti-configuration"
    virtual_network_name = "kirti-network"
    address_prefixes     = ["10.0.1.0/26"]
  }
}
