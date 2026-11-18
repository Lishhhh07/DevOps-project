#!/usr/bin/env bash
set -euo pipefail

for replicas in 3 5 3; do
    echo "Scaling quote-api to $replicas replicas"
    kubectl --context kind-lishika-quote-demo scale deployment/quote-api --replicas="$replicas"
    kubectl --context kind-lishika-quote-demo rollout status deployment/quote-api --timeout=180s
    kubectl --context kind-lishika-quote-demo wait deployment/quote-api \
        --for="jsonpath={.status.replicas}=$replicas" --timeout=180s
    kubectl --context kind-lishika-quote-demo get pods -l app=quote-api
done
