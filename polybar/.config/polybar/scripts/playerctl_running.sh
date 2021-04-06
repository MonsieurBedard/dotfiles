#!/usr/bin/env bash

PLAYERCTL_STATUS=$(playerctl status 2>/dev/null)
EXIT_CODE=$?

if [ $EXIT_CODE -eq 0 ]; then
    STATUS=$PLAYERCTL_STATUS

    if [ "$STATUS" = "Stopped" ]; then
        exit 1
    fi
else
    exit 1
fi
