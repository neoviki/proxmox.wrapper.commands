# Proxmox Automation Utilities

This project contains a set of scripts (or utilities) to simplify and automate administrative tasks on a Proxmox server. Proxmox is an open-source virtualization platform used to manage virtual machines (VMs) and containers, providing a comprehensive and efficient solution for deploying, managing, and backing up virtualized environments.

These wrapper scripts offer an interface for performing common Proxmox server operations like creating, deleting, exporting, importing, and restarting VMs, as well as enabling or disabling the Proxmox web-based GUI and setting up serial console access.

## What is Proxmox?

Proxmox is a powerful open-source virtualization platform that enables the management of virtual machines and containers. It offers support for both KVM (for full virtualization) and LXC (for lightweight container-based virtualization). Proxmox is highly popular for managing virtualized infrastructure in both enterprise and personal environments. It comes with a built-in web interface for managing VMs, containers, storage, and networks.

## Utilities

### 1. `delete.vm`
This script deletes a specified virtual machine (VM) from the Proxmox server.

**Usage:**
```bash
$ ./delete.vm <vm_id>
```
- `<vm_id>`: The ID of the VM you wIsh to delete.

### 2. `export.vm`
This script exports a VM to a specified file format, allowing you to back it up or transfer it.

**Usage:**
```bash
$ ./export.vm <vm_id> <export_path>
```
- `<vm_id>`: The ID of the VM you wish to export.
- `<export_path>`: The path where the exported VM will be saved.

### 3. `gui.disable`
This script disables the Proxmox web-based GUI, preventing users from accessing it through a browser.

**Usage:**
```bash
$ ./gui.disable
```

### 4. `gui.enable`
This script enables the Proxmox web-based GUI, allowing users to access it through a browser.

**Usage:**
```bash
$ ./gui.enable
```

### 5. `import.vm`
This script imports a previously exported VM back into the Proxmox server.

**Usage:**
```bash
$ ./import.vm <import_path>
```
- `<import_path>`: The path to the VM export file that you want to import.

### 6. `restart.hard`
This script performs a hard restart of the Proxmox server, forcing a reboot of all services.

**Usage:**
```bash
$ ./restart.hard
```

### 7. `restart`
This script restarts a specific VM on the Proxmox server.

**Usage:**
```bash
$ ./restart <vm_id>
```
- `<vm_id>`: The ID of the VM you want to restart.

### 8. `serial.connect`
This script establishes a serial connection to a specified VM, allowing you to interact with the VM’s console.

**Usage:**
```bash
$ ./serial.connect <vm_id>
```
- `<vm_id>`: The ID of the VM to connect to.

### 9. `serial.enable`
This script enables serial console access for a specified VM on the Proxmox server.

**Usage:**
```bash
$ ./serial.enable <vm_id>
```
- `<vm_id>`: The ID of the VM for which to enable serial console access.

## Prerequisites

- Proxmox server setup and running.
- Appropriate permissions to interact with Proxmox services.
- The necessary VM IDs or paths for the operations to function.


## Reference

[1] https://www.proxmox.com/en/
