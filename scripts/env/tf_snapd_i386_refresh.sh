#!/bin/sh

. "$SCRIPTS_DIR/env/common.sh"

export ARCH=${ARCH:-"i386"}
export PROJECT=${PROJECT:-"snapd"}
export CHANNEL=${CHANNEL:-"beta"}
export CORE_CHANNEL=${CORE_CHANNEL:-"stable"}
export DEVICE_QUEUE=${DEVICE_QUEUE:-"maas-x86-node"}
export CHANNEL=${CHANNEL:-"stable"}
export CORE_CHANNEL=${CORE_CHANNEL:-"beta"}
export SETUP=${SETUP:-""}
export SPREAD_TESTS=${SPREAD_TESTS:-"external:ubuntu-core-16-32"}
export SPREAD_PARAMS=${SPREAD_PARAMS:-"-v"}
export TEST_PASS=${TEST_PASS:-"ubuntu"}
export SPREAD_TESTS_SKIP=${SPREAD_TESTS_SKIP:-"tests/main/auto-refresh,tests/main/auto-refresh-retry"}
