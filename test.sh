#!/usr/bin/env bash

export DAPP_BUILD_OPTIMIZE=0
export DAPP_OPTIMIZER_BUILD_RUNS=99999
export DAPP_OPTIMIZER_BUILD_RUNS=99999

dapp build
dapp test --verbosity 3