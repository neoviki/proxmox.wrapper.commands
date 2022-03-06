#!/bin/bash

if [ -z "$1" ]; then
	echo "error: specify vm id"
	exit 1
fi

VM_ID="$1"

echo "Enabling serial0 :  VM ( $VM_ID )"
qm set $VM_ID -serial0 socket
sleep 1
echo "Enabling serial0 requires a reboot ..."
qm shutdown $VM_ID
sleep 15
echo "starting VM( $VM_ID )"
qm start $VM_ID

