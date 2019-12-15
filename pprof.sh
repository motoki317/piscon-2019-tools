#!/bin/bash

echo "Taking 45s cpu pprof..."
go tool pprof http://localhost:6060/debug/pprof/profile?seconds=45
