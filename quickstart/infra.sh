kubectx hrl-test/api-pokprod001-ete14-res-ibm-com:6443/DEAN@il.ibm.com
export HF_TOKEN_NAME=${HF_TOKEN_NAME:-llm-d-hf-token}
export NAMESPACE=hrl-test
kubectl create secret generic ${HF_TOKEN_NAME} \
    --from-literal="HF_TOKEN=${HF_TOKEN}" \
    --namespace "${NAMESPACE}" \
    --dry-run=client -o yaml | kubectl apply -f -
