#!/bin/bash


echo "Lap 9: I/O Redirection Demo "

echo "Hello, this is OS Lab" > file1.txt
echo "Content written to file1.txt"

echo "Appending new line" >> file1.txt
echo "Content appended to file1.txt"

echo ""
echo "Reading from file1.txt using input redirection:"
cat < file1.txt

echo ""
echo "Trying to read non-existing file:"
cat file_not_exist.txt 2> error.txt
echo "Error message stored in error.txt"

echo ""
echo "Error file content:"
cat error.txt
