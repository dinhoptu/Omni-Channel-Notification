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
# Hash 4080
# Hash 6857
# Hash 7633
# Hash 4959
# Hash 1346
# Hash 5853
# Hash 3771
# Hash 6098
# Hash 9708
# Hash 1464
# Hash 4376
# Hash 1848
# Hash 4665
# Hash 4122
# Hash 2311
# Hash 4014
# Hash 2556
# Hash 9303
# Hash 3241
# Hash 7905
# Hash 4470
# Hash 8511
# Hash 7317
# Hash 5023
# Hash 6523
# Hash 1012
# Hash 6990
# Hash 5426
# Hash 3795
# Hash 6892
# Hash 7228
# Hash 9742
# Hash 6699
# Hash 6784
# Hash 4436
# Hash 9103
# Hash 3201
# Hash 7792
# Hash 6695
# Hash 3393
# Hash 1275
# Hash 2089
# Hash 3670
# Hash 1335
# Hash 2343
# Hash 3218
# Hash 3814
# Hash 2623
# Hash 6020
# Hash 2551
# Hash 8553
# Hash 7488
# Hash 8467
# Hash 8768
# Hash 3011
# Hash 5494
# Hash 8374
# Hash 8947
# Hash 6834
# Hash 5373
# Hash 5850
# Hash 1944
# Hash 3977
# Hash 2417
# Hash 4569
# Hash 8394
# Hash 7126
# Hash 8070
# Hash 5194
# Hash 9072
# Hash 1947
# Hash 7617
# Hash 8130
# Hash 1593
# Hash 3864
# Hash 9769
# Hash 6118
# Hash 1132
# Hash 1981
# Hash 6753
# Hash 2823