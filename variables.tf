variable "target_node" {
    description = "server for deploy" 
    default = "bus"
}

variable "vm_to_clone" {
    description = "VM for clone"
    default = "debian11"
}

variable "server_uri" {
    description = "server uri for deploy"
    default = "https://10.13.133.90:8006/api2/json"
}

variable "server_user" {
    description = "user for server"
    default = "root@pam"
}

variable "server_pass" {
    description = "password for server"
    default = "22122009"
}

variable "vm_memory" {
    description = "memory for VM"
    default = "4096"
}

variable "vm_cpu" {
    description = "cpu for VM"
    default = "2"
}

variable "vmid" {
    description = "vmid"
    default = "150"
}

