#! /bin/bash

echo "::set-output name=RESPONSE_GET::$(curl -s -o /dev/null -w %{http_code} $URL_REQ )";
if [ $RESPONSE_GET == 200 ]
then
  echo "va bene socio"
else
  echo "non va bene"
fi
