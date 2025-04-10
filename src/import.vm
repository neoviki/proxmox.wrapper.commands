echo "importing vm from .vma backup"
if [ -z "$1" ]; then
	echo "error: specify the vma file"
	exit 1
fi

VMA_FILE="$1"

function generate_vm_id(){
	new_vm_id=104
	while [ 1 ]
	do
		qm list --full |  awk '{print $1}' | grep "$new_vm_id" 2>/dev/null 1>/dev/null
	
		if [ $? -eq 0 ]; then
			echo "INFO: New VM is getting created with id : $new_vm_id"
			break
		fi
	
		echo "DEBUG: VM with id [ $new_vm_id ] already exist"
		new_vm_id=$((new_vm_id+1))
	done

}


function import_vm()
{
	#Import Proxmox VM from Backup
	#qmrestore <backup.vma> <new_vm_id>
	qmrestore $VMA_FILE $new_vm_id
}

generate_vm_id
import_vm
