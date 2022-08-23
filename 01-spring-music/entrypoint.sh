#!/bin/sh

echo "DBURL=${DBURL}" > /app/config.conf

exec "$@"

