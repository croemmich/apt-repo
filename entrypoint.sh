#!/usr/bin/env bash
set -e

# Refresh mirror every X hours
while true;
do
  apt-mirror
  echo "Start sleep 6h..."
  sleep 6h
done
