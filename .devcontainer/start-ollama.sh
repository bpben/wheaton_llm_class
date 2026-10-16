#!/usr/bin/env bash
# Start Ollama if it is not already serving. Dev containers / Codespaces
# usually have no systemd, and bare `ollama serve &` in lifecycle hooks
# often dies when that shell exits — setsid detaches a real daemon.
set -euo pipefail

HOST="${OLLAMA_HOST:-127.0.0.1:11434}"
LOG="${OLLAMA_LOG:-/tmp/ollama.log}"

is_up() {
  curl -sf "http://${HOST}/api/tags" >/dev/null 2>&1
}

if is_up; then
  exit 0
fi

setsid ollama serve >>"${LOG}" 2>&1 </dev/null &

for _ in $(seq 1 60); do
  if is_up; then
    exit 0
  fi
  sleep 1
done

echo "ollama failed to become ready; see ${LOG}" >&2
tail -n 50 "${LOG}" >&2 || true
exit 1
