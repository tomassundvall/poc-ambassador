kubectl create namespace qa1

helm install stable/ambassador \
    --version 2.12.0 \
    --values ./Gateway/values.yaml \
    --name gateway \
    --namespace qa1

helm install Tour \
    --version 0.1.0 \
    --name tour \
    --namespace qa1 