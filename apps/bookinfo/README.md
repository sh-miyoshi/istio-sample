# デプロイの方法

```bash
kubectl apply -f <(istioctl kube-inject -f bookinfo.yaml)
kubectl apply -f bookinfo-gateway.yaml

# If you want to add MySQL Service to rating, run following command
kubectl apply -f <(istioctl kube-inject -f bookinfo-mysql.yaml)
```
