#!/bin/bash

if [ -z "$1" ]; then
	echo "error: specify vm id"
	exit 1
fi

VM_ID="$1"

qm terminal $VM_ID -iface serial0

