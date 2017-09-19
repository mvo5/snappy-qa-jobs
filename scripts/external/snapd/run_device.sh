#!/bin/bash

git clone $SNAPD_URL
(cd $PROJECT && git fetch origin && git checkout $BRANCH && git pull)
. "$PROJECT/tests/lib/external/prepare-ssh.sh" "$DEVICE_IP" "$DEVICE_PORT" "$DEVICE_USER" || true
. "$SCRIPTS_DIR/utils/register_device.sh" "$DEVICE_IP" "$DEVICE_PORT" "$DEVICE_USER" "$DEVICE_PASS" "$REGISTER_EMAIL" || true
. "$SCRIPTS_DIR/utils/run_setup.sh" "$DEVICE_IP" "$DEVICE_PORT" "$DEVICE_USER" "$DEVICE_PASS" "$SETUP" || true
. "$SCRIPTS_DIR/utils/get_spread.sh"
. "$SCRIPTS_DIR/utils/run_spread.sh" "$DEVICE_IP" "$DEVICE_PORT" "$PROJECT" "$SPREAD_TESTS" "$SPREAD_ENV" "$SKIP_TESTS" | tee run_spread.log
