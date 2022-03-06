if [ -z "$1" ]; then
	echo "error: specify vm id"
	exit 1
fi

VM_ID="$1"

echo "deleting VM ( $VM_ID )"
qm destroy $VM_ID --purge

