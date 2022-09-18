#! /bin/bash

case $1 in
  200)
    echo "description: The image $3 exist"
    ;;
  404)
    echo "404"
    ;;
   *)
    echo "ERRORE_SOCIO"
    echo "fai cagare"
    curl $2
    ;;
esac
