
resource "azurerm_kubernetes_cluster" "aks_cluster" {
    name                = "BMS-AKS-Cluster"
    location            = "Central India" # Change to your desired location
    resource_group_name = "BMS-Resource"

    default_node_pool {
        name       = "default"  # Name of the default node pool
        vm_size    = "Standard_DS2_v2" # Size of the VM instances       
        node_count = 2  # Number of nodes in the default node pool
        # max_count and min_count are not needed when auto-scaling is disabled
    }

    identity {
        type = "SystemAssigned"
    }

    dns_prefix = "bmsaks"

    tags = {
        environment = "Devolopment"
        project     = "BMS"
        owner       = "BMS Team"
    }
}