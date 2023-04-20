#!/bin/bash

set -e 

if [[-e coverage.out]]; then
    rm coverage.out
fi

go test --coverprofile=coverage.out
go tool cover --html=coverage.out
rm coverage.out
