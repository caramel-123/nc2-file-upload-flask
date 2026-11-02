#!/bin/bash
set -e

sudo systemctl is-active --quiet nc2-flask

for i in {1..10}; do
    if curl -fsS http://127.0.0.1:5000/ > /dev/null; then
        echo "Flask application is running successfully."
        exit 0
    fi

    echo "Waiting for Flask application... attempt $i/10"
    sleep 3
done

echo "Flask application failed to respond after 30 seconds."
exit 1#!/bin/bash
set -e

sudo systemctl is-active --quiet nc2-flask

for i in {1..10}; do
    if curl -fsS http://127.0.0.1:5000/ > /dev/null; then
        echo "Flask application is running successfully."
        exit 0
    fi

    echo "Waiting for Flask application... attempt $i/10"
    sleep 3
done

echo "Flask application failed to respond after 30 seconds."
exit 1#!/bin/bash

set -e

sudo systemctl is-active --quiet nc2-flask

curl -fsS http://127.0.0.1:5000/ > /dev/null

echo "Flask application is running successfully."
