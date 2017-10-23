#!/bin/bash
echo "Put the file that want to edit: "
read file
echo "Insert the old ServerName: "
read old
echo "Insert the new ServerName: "
read new
sed -i "s/$old/$new/" $file
echo "-----------Updated successfuly----------"
