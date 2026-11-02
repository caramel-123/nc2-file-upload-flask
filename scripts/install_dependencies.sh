#!/bin/bash

set -e

APP_DIR="/home/ssm-user/file-upload-flask"
VENV_DIR="$APP_DIR/venv"

if [ ! -d "$VENV_DIR" ]; then
    python3 -m venv "$VENV_DIR"
fi

"$VENV_DIR/bin/python" -m pip install -r "$APP_DIR/requirements.txt"
