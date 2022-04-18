# for clone virtual devops     
resource "proxmox_vm_qemu" "test1" {
    count = 1
    name =  "test"
    target_node = var.target_node
    clone = var.vm_to_clone
    memory = var.vm_memory
    cores = var.vm_cpu
    macaddr = var.macaddr
    agent = 1
}

