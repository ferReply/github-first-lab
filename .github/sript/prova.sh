#! /bin/bash

case $1 in
  200)
    echo "description: The image exist"
    ;;
  404)
    echo "404"
    ;;
   *)
    echo "ERRORE"
    curl $2
    ;;
esac
