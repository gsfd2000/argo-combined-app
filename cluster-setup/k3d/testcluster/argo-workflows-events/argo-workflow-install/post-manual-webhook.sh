#!/bin/bash
# this webhook is a push webhook
curl -X POST -H "Content-Type: application/json" -d @webhook-newapp-push.json http://webhook-newapp.172.20.0.2.nip.io/argo-newapp
