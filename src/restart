if [ -z "$1" ]; then
	echo "error: specify vm id"
	exit 1
fi

VM_ID="$1"

echo "shutting down VM ( $VM_ID )"
qm shutdown $VM_ID
sleep 15
echo "starting VM( $VM_ID )"
qm start $VM_ID

