#!/bin/sh

file_a=/tmp/test/index.html
file_b=./index.html

a=$(md5sum $file_a | awk '{print $1}')
b=$(md5sum $file_b | awk '{print $1}')

if [[ "$a" == "$b" ]]; then
echo "без изменений"
else
echo "файлы разные"
fi