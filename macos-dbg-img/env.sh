#!/usr/bin/env bash

sh_dir="$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"

env -i $SHELL --noprofile --init-file "$sh_dir/.bashrc" || \
    exit $?
