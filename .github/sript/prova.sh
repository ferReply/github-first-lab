#! /bin/bash

RESPONSE_GET=$(curl -s -o /dev/null -w %{http_code} https://iap.bmwgroup.net/nexus/repository/IAP_Docker_Snapshot/v2/dsa-iam/jwks-auth-service/manifests/1.4.2-SNAPSHOT.eedfbbe )"
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

# if [ $RESPONSE_GET == 200 ]
# then
#   echo "va bene socio"
# else
#   echo "non va bene"
# fi
