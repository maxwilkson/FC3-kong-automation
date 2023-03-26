#!/bin/bash
kubectl exec -it testcurl -- sh

curl --location --request POST 'http://keycloak.iam/realms/bets/protocol/openid-connect/token' \
--header 'Content-Type: application/x-www-form-urlencoded' \
--data-urlencode 'client_id=kong' \
--data-urlencode 'grant_type=password' \
--data-urlencode 'username=joao' \
--data-urlencode 'password=joao' \
--data-urlencode 'client_secret=AdNWMSeYhfmRisA4osSXvJmHAqLxnl6C' \
--data-urlencode 'scope=openid'
