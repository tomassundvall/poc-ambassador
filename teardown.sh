helm delete --purge gateway
helm delete --purge tour
kubectl get crd | grep 'getambassador.io'| awk '{print $1}' | xargs kubectl delete crd
kubectl delete namespace qa1