#!/bin/sh

test_command='curl -sL \
    -w "%{http_code}\\n" \
    "localhost:9889" \
    -o /dev/null 
if [ $(test_command) == "200" ] ; 
then
   echo "OK" ;
else
   echo "KO" ;
fi