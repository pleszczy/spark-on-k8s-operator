#!/usr/bin/env bash
docker build -t quay.io/synerise/spark:2.4.0-custom .
docker login quay.io
docker push quay.io/synerise/spark:2.4.0-custom
