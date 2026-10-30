#!/usr/bin/env bash
if [[ "${1:-}" == "-y" ]]; then
    shift
    script="$1"
    shift
    while [[ $# -gt 0 && "$1" != "--" ]]; do
        shift
    done
    [[ $# -gt 0 ]] && shift
    exec "$HOME/A08_LAB8/.venv-librelane/bin/python" "$script" "$@"
fi
exec /usr/bin/yosys "$@"
