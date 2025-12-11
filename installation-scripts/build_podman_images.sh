#!/usr/bin/env bash

podman build -t backend-runs ./backend-runs
podman build -t tcx-to-json ./tcx-to-json
podman build -t backend-strava ./backend-strava
podman build -t backend-location ./backend-location
podman build -t backend-trace-maker ./backend-trace-maker
podman build -t vaadin ./vaadin-frontend
podman build -t frontend ./frontend
