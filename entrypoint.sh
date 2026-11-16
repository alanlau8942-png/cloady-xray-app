#!/bin/sh
set -e
PORT="${PORT:-3000}"
sed -e "s/PORT_PLACEHOLDER/$PORT/g" -e "s/UUID_PLACEHOLDER/$XRAY_UUID/g" -e "s|PATH_PLACEHOLDER|$XRAY_PATH|g" config.template.json > config.json
exec ./xray run -c config.json
