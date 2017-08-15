#!/bin/sh
set -e

export JOBS_PROJECT=snappy-qa-jobs
export JOBS_URL=https://github.com/sergiocazzolato/snappy-qa-jobs.git
export SNAPD_URL=https://github.com/snapcore/snapd.git
export CCONF_URL=https://github.com/sergiocazzolato/console-conf-tests.git
export TF_CLIENT=/snap/bin/testflinger-cli
export TF_DATA=/var/snap/testflinger-cli/current
