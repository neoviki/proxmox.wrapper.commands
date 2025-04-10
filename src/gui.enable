#!/bin/bash

if [ -z "$1" ]; then
	echo "error: specify vm id"
	exit 1
fi

VM_ID="$1"

echo "Enabling GUI :  VM ( $VM_ID )"
qm set $VM_ID --vga std 
sleep 1
echo "Enabling GUI requires a reboot ..."
qm shutdown $VM_ID
sleep 15
echo "starting VM( $VM_ID )"
qm start $VM_ID

