#!/bin/sh

. "$SCRIPTS_DIR/env/common.sh"

export PROJECT=${PROJECT:-"snapd"}
export CHANNEL=${CHANNEL:-"beta"}
export ARCHITECTURE=${ARCHITECTURE:-"amd64"}
export DEVICE_QUEUE=${DEVICE_QUEUE:-"intel-gfx"}
export CHANNEL=${CHANNEL:-"stable"}
export SETUP=${SETUP:-"sudo snap refresh --beta core"}
export SPREAD_TESTS=${SPREAD_TESTS:-"external:ubuntu-core-16-64"}
