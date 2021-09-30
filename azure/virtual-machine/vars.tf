variable "resourceGroup" {
  type        = string
  description = "Este es el nombre asignado para el grupo de recursos"
  default     = "ResourceGroup-001"
}

variable "virtualNetwork" {
  type        = string
  description = "Este es el nombre asignado para la red virtual"
  default     = "VirtualNetwork-001"
}

variable "location" {
  type        = string
  description = "Este es la region/location dentro del grupo de recursos"
  default     = "eastus2"
}

variable "networkInterface" {
  type        = string
  description = "Este es la interfaz de red"
  default     = "NetworkInterface-001"
}

variable "publicIp" {
  type        = string
  description = "Este es la Ip Publica"
  default     = "PublicIp-001"
}

variable "securityGroup" {
  type        = string
  description = "Este es la configuracion del grupo de seguridad"
  default     = "SecurityGroup-001"
}

variable "subNet" {
  type        = string
  description = "Este es la subNet"
  default     = "Subnet-001"
}

variable "virtualMachine" {
  type        = string
  description = "Este es el nombre de la maquina virtual"
  default     = "VirtualMachine-001"
}

variable "virtualMachineSize" {
  type        = string
  description = "Este es el tamaño de la maquina virtual"
  default     = "Standard_D2s_v3"
}

variable "ProjectTag" {
  type        = string
  description = "Este es el nombre asignado para tag del Proyecto"
  default     = "PY-PICHINCHA-001"
}

variable "EnvironmentTag" {
  type        = string
  description = "Este es el nombre asignado para ambiente del Proyecto"
  default     = "staging"
}

variable "tags" {
  type        = map(string)
  description = "Este es la region/location dentro del grupo de recursos"
  default = {
    Project     = "PY-PICHINCHA-001"
    Environment = "staging"
  }
}