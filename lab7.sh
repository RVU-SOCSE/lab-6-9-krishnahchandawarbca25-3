#!/bin/bash

echo "memory usage monitor"

echo""
echo "current memory status (using free command):"
free -h

echo""
echo "detailed memory info (using top command):"
top -b -n 1 | grep "MiB Mem"

echo ""
echo "available memory"
free -h | grep "Mem" | awk '{print "available " $7}'
