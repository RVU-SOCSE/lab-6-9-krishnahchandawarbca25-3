#!/bin/bash

echo "environment varianle demo"
name="krishna"
course="Operating systems"

echo""
echo "local variables"
echo "Name: $name"
echo "course: $course"

export name
export course

echo ""
echo "using printenv command"
printenv name
printenv course 

echo""
echo "All environment variables (using env):"
env

