#! /bin/bash

for i in "$@"
do
  echo "Arg...: $i"
done

if [ $1 == 200 ]
then 
  echo "ok"
fi

case $1 in
  200)
    echo "description: The image $3 exist"
    ;;
  404)
    echo "404"
    ;;
   *)
    echo "ERRORE_SOCIO - $1"
    echo "fai cagare"
    curl $2
    ;;
esac
