#!/bin/bash -x

IFS="." read -r rc level action

export PATH="$(dirname $0)/bin:$PATH"
export SUBINIT_LEVEL="$level"
export SUBINIT_ACTION="$action"


run-parts --verbose --arg="$action" "rc${level}.d"
