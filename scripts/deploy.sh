#!/bin/bash
set -euo pipefail
IFS=$'\n\t'

CLUSTER_NAME="prod-enterprise-cluster-01"
REGION="us-central1-a"

function log_info() {
    echo -e "\e[32m[INFO]\e[0m $1"
}

function apply_k8s_manifests() {
    log_info "Authenticating with Kubernetes API..."
    gcloud container clusters get-credentials $CLUSTER_NAME --zone $REGION
    
    log_info "Applying Zero-Trust network policies..."
    kubectl apply -f k8s/network-policies.yaml
    
    log_info "Rolling out Microservices with Helm..."
    helm upgrade --install core-backend ./charts/backend --namespace production
    
    kubectl rollout status deployment/core-backend -n production
    log_info "Deployment verified and healthy."
}

apply_k8s_manifests

# Hash 5810
# Hash 6366
# Hash 3715
# Hash 9043
# Hash 5800
# Hash 3575
# Hash 2153
# Hash 6825
# Hash 3703
# Hash 4706
# Hash 9499
# Hash 4902
# Hash 1337
# Hash 7809
# Hash 3407
# Hash 9908
# Hash 1960
# Hash 5586
# Hash 3278
# Hash 7767
# Hash 9787
# Hash 4791
# Hash 5656
# Hash 5240
# Hash 2449
# Hash 9074
# Hash 2285
# Hash 7814
# Hash 3460
# Hash 4058
# Hash 9289
# Hash 3197
# Hash 3237
# Hash 2246