#!/usr/bin/env bash

COOKIE=$(python3.4 get_cookie.py --url https://megadev.labs.stratio.com --username admin --password 1234)

curl -X POST -k --cookie "dcos-acs-auth-cookie=$COOKIE" \
-d @/home/asoriano/Stratio/Stratio-Intelligence/stratio-intelligence/POCs/mlmodel-sparkjob/etc/download_from_mlrepo_dispatcher.json \
https://megadev.labs.stratio.com/service/spark-fw/v1/submissions/create