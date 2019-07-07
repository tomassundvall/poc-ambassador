# poc-ambassador
Prof Of Concept of how to deploy and use the Ambassador API Gateway

## Install Gateway
```
kubectl create namespace qa1
helm install stable/ambassador \
    --version 2.12.0 \
    --values ./Gateway/values.yaml \
    --name gateway \
    --namespace qa1

Access admin GUI:
http://localhost/ambassador/v0/diag/

Ambassador tour example app:
kubectl apply -f https://getambassador.io/yaml/tour/tour.yaml
```

## Cleanup
```
helm delete --purge gateway
kubectl get crd | grep 'getambassador.io'| awk '{print $1}' | xargs kubectl delete crd
kubectl delete namespace qa1
```