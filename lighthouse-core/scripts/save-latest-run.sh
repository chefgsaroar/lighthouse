#!/bin/bash

set -euxo pipefail

# Saves the necessary contents of the `latest-run/` folder to a subfolder for easier A/B comparison.
# Restoring the contents to `latest-run/` is just `cp latest-run/latest-run.bak/* latest-run/`.

DIRNAME="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
LH_ROOT="$DIRNAME/../.."
TARGET_DIR=${1:-latest-run.bak}
cd $LH_ROOT/latest-run

mkdir -p $TARGET_DIR
cp artifacts.json $TARGET_DIR/
cp defaultPass.trace.json $TARGET_DIR/
cp defaultPass.devtoolslog.json $TARGET_DIR/
cp offlinePass.devtoolslog.json $TARGET_DIR/
cp redirectPass.devtoolslog.json $TARGET_DIR/
