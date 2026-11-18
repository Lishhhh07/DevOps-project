#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")/.."

# Use the dedicated demo cluster so another Kubernetes context is never changed.
kind load docker-image quote-api:1.0 --name lishika-quote-demo
kubectl --context kind-lishika-quote-demo apply -f k8s/
kubectl --context kind-lishika-quote-demo rollout status deployment/quote-api --timeout=180s
kubectl --context kind-lishika-quote-demo get pods -l app=quote-api
kubectl --context kind-lishika-quote-demo get service quote-api
