#!/bin/bash
echo "Directory Management"
while true
do
echo ""
echo "1. create directory"
echo "2. list directories"
echo "3. delete directory"
echo "4. exit"

echo "enter your choice"
read choice

case $choice in
    1)
        echo "Enter directory name to create:"
        read dirname
        mkdir "$dirname"
        # Fixed: Added space before ']'
        if [ $? -eq 0 ]; then
            echo "Directory $dirname created successfully"
        else
            echo "Error creating directory"
        fi
        ;;
    2)
        echo "Directories in current location:"
        ls -d */ 2>/dev/null || echo "No directories found."
        ;;
    3)
        echo "Enter the directory name to delete:"
        read dirname
        rmdir "$dirname"
        # Fixed: Added spaces inside '[' and ']'
        if [ $? -eq 0 ]; then
            echo "Directory $dirname deleted successfully"
        else
            echo "Error deleting directory (it may not exist or is not empty)"
        fi
        ;;
    4)
        echo "Exiting program"
        break
        ;;
    *)
        echo "Invalid choice, try again"
        ;;
    esac
done
