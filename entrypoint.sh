#!/bin/bash
set -e

COMMAND=$1

if [ "$COMMAND" = 'help' ]
then
    exec tj3 --help
fi

if [ "$COMMAND" = 'tjman' ]
then
    exec tj3man "${@:2}"
fi

if [ "$COMMAND" = 'tj' ]
then
    exec tj3 "${@:2}"
fi

echo "Builtin command not provided [help|tj|tjman]"
echo "[RUN]: $@"

exec "$@"
