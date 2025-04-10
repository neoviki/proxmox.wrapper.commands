if [ -z "$1" ]; then
	echo "error: specify the vma file"
	exit 1
fi

echo "exporting vm as .vma file"

VM_ID="$1"

#Export Proxmox VM / Backup
cd  /var/lib/vz/dump
#vzdump <vm_id>
vzdump $VM_ID

ls *.vma
