if [ -z "$1" ]; then
	echo "error: specify vm id"
	exit 1
fi

VM_ID="$1"


echo "power off vm ( $VM_ID )"
qm stop $VM_ID
echo "starting vm ( $VM_ID )"
qm start $VM_ID

