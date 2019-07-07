# poc-ambassador
Prof Of Concept of how to deploy and use the Ambassador API Gateway

## Install Gateway
```
Set permissions:
sudo chmod 777 setup.sh
sudo chmod 777 teardown.sh

kubectl create namespace qa1

helm install stable/ambassador \
    --version 2.12.0 \
    --values ./Gateway/values.yaml \
    --name gateway \
    --namespace qa1

helm install Tour
    --version 0.1.0
    --name tour
    --namespace qa1 

Access admin GUI:
http://localhost/ambassador/v0/diag/

Access tour app:
http://localhost/tour
```

## Cleanup
```
helm delete --purge gateway
helm delete --purge tour
kubectl get crd | grep 'getambassador.io'| awk '{print $1}' | xargs kubectl delete crd
kubectl delete namespace qa1
```