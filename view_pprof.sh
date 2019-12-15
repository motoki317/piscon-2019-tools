#!/bin/bash

go tool pprof -http localhost:8095 -source_path /home/isucon/isucari/webapp/go $1
