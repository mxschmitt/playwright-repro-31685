#!/bin/bash

docker build -t test .
docker run --rm test
