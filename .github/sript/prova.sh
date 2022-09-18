#! /bin/bash

if [ $0 == 200 ]
then 
  echo "ok"
fi

case $0 in
  200)
    echo "description: The image $2 exist"
    ;;
  404)
    echo "404"
    ;;
   *)
    echo "ERRORE_SOCIO - $0"
    echo "fai cagare"
    curl $1
    ;;
esac
