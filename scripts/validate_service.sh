#!/bin/bash

set -e

sudo systemctl is-active --quiet nc2-flask

curl -fsS http://127.0.0.1:5000/ > /dev/null

echo "Flask application is running successfully."
