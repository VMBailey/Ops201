#! /bin/bash

# Test comment

mkdir dir1 dir2 dir3 dir4

directories=("dir1" "dir2" "dir3" "dir4")

for thisdir in ${directories[@]}
do
echo array.txt > $directories
done