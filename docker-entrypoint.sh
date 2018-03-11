#!/bin/bash
set -euo pipefail

if [ "${1:-}" = 'serve' ]; then
	cp /usr/src/mdwiki/mdwiki.html /data/index.html
	exec python -m http.server 80
fi

exec "$@"
