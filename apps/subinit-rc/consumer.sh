#!/bin/bash

exec amqp-consume -u "amqp://${AMQP_SERVER:-localhost}" -e subinit -q "subinit-rc-$(hostname)" -r 'rc.#' $(dirname $0)/bin/run-rc.sh
