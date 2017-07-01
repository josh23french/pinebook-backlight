#!/usr/bin/env bash

CURRENT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd)"
tmux bind-key = run-shell "$CURRENT_DIR/scripts/brightness-step-up.sh"
tmux bind-key - run-shell "$CURRENT_DIR/scripts/brightness-step-down.sh"
