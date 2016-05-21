#!/usr/bin/env bash

if [[ `uname` == 'Darwin' ]]; then
    export MACOSX_DEPLOYMENT_TARGET=10.9
    export CFLAGS="${CFLAGS} -headerpad_max_install_names"
fi

$PYTHON -B setup.py install --single-version-externally-managed --record record.txt
