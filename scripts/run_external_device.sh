#!/bin/bash
set -ex

if [ "$#" -ne 2 ]; then
    echo "Illegal number of parameters"
    exit 1
fi

export WORKSPACE=${WORKSPACE:-$(pwd)}
export SCRIPTS_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

if [ -f "$SCRIPTS_DIR/env/$1.sh" ]; then
	. "$SCRIPTS_DIR/env/$1.sh"
else
	echo "Environment file does not exist: $SCRIPTS_DIR/env/$1.sh"
	exit 1
fi
export DEVICE_IP=$2

. $SCRIPTS_DIR/external/$PROJECT/run_device.sh
