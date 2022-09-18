#! /bin/bash

echo "::set-output name=RESPONSE_GET::$(curl -s -o /dev/null -w %{http_code} http.net/nexus/repository/IAP_Docker_Snapshot/v2/dsa-iam/jwks-auth-service/manifests/1.4.2-SNAPSHOT.eedfbbe )"
if [ $RESPONSE_GET == 200 ]
then
  echo "va bene socio"
else
  echo "non va bene"
fi
