#!/bin/bash

echo "Running tests on a vm in a test flinger desktop device"

export WORKSPACE=${WORKSPACE:-$(pwd)}
export SCRIPTS_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

if [ "$#" -ne 1 ]; then
    echo "Illegal number of parameters"
    exit 1
else
	. "$SCRIPTS_DIR/utils/load_env.sh" "$1"
fi

sudo rm -f $TF_DATA/*

. "$SCRIPTS_DIR/test_flinger/$PROJECT/job_vm.sh"
. "$SCRIPTS_DIR/test_flinger/run_job.sh"
