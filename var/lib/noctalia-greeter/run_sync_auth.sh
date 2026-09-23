#!/usr/bin/env bash

# Ensure chilli can sync Noctalia state
if command -v noctalia-greeter &>/dev/null; then
    noctalia-greeter passwordless-sync enable chilli &>/dev/null
else
    >&2 echo "Couldn't find noctalia-greeter"
    exit 1
fi
