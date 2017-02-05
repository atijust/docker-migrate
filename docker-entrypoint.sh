#!/bin/sh

if [ -n "${MIGRATE_WAIT_FOR_HOST}" -a -n "${MIGRATE_WAIT_FOR_PORT}" ]; then
    waitforit \
        -host=${MIGRATE_WAIT_FOR_HOST} \
        -port=${MIGRATE_WAIT_FOR_PORT} \
        -timeout=${MIGRATE_WAIT_TIMEOUT:-60}
    if [ $? -ne 0 ]; then
        exit 1
    fi
fi

migrate $*
