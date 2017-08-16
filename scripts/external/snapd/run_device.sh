#!/bin/bash
set -ex

DEVICE_PORT=22
DEVICE_USER=ubuntu
TEST_USER=test

git clone $SNAPD_URL
(cd $PROJECT && git checkout $BRANCH)
. "$PROJECT/tests/lib/external/prepare-ssh.sh" "$DEVICE_IP" "$DEVICE_PORT" "$DEVICE_USER"
. "$SCRIPTS_DIR/utils/run_setup.sh" "$DEVICE_IP" "$DEVICE_PORT" "$TEST_USER" "$SETUP"
. "$SCRIPTS_DIR/utils/get_spread.sh"
. "$SCRIPTS_DIR/utils/run_spread.sh" "$DEVICE_IP" "$DEVICE_PORT" "$PROJECT" "$SPREAD_TESTS" "$SPREAD_ENV"
