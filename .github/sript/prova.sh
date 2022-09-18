#! /bin/bash

echo "::set-output name=RESPONSE_GET::$(curl -s -o /dev/null -w %{http_code} http.net/nexus/repository/IAP_Docker_Snapshot/v2/dsa-iam/jwks-auth-service/manifests/1.4.2-SNAPSHOT.eedfbbe )"
echo $RESPONSE_GET

case $RESPONSE_GET in
  200)
    echo "response: $RESPONSE_GET"
    echo "description: The image "
    ;;
  404)
    echo "404"
    ;;
   *)
    echo "ERRORE"
    ;;
esac
