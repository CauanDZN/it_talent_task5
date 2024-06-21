#!/bin/sh
set -e

host="$1"
shift
cmd="$@"

until nc -z "$host" 3306; do
  >&2 echo "Vite is unavailable - sleeping"
  sleep 1
done

>&2 echo "Vite is up - executing command"
exec $cmd
