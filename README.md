# Python Flask Dockerized with kubernetes and prometheus Application#

Build the image using the following command

```bash
$ docker build -t simple-flask-app:latest .
```

Run the Docker container using the command shown below.

```bash
$ docker run -d -p 5000:5000 simple-flask-app
```

The application will be accessible at http:127.0.0.1:5000 

Now Check the image ID using and tag
```bash
$docker ps -a
``` 

```bash
$ docker tag fullcontact_project ramesh0476/fullcontact_project:1.2
```
Push to docker hub

```bash
$ docker push ramesh0476/fullcontact_project
```

Containerized application with kubernetes
```bash
kubectl create -f fullcontact_deployment.yaml 
```
Port-forwarding
```bash
kubectl port-forward fullcontact-deployment-86b489dc76-f2wrp --namespace=default 5000:5000
```

The application with kubernetes will be accessible at http:127.0.0.1:5000 

Now Kubernetes Setup for Prometheus (or) Grafana -  https://github.com/giantswarm/kubernetes-prometheus

```bash
$ kubectl apply \
  --filename https://raw.githubusercontent.com/giantswarm/kubernetes-prometheus/master/manifests-all.yaml
  ```
Check kubectl monitoring
```bash
$ kubectl get pods -n monitoring
```
kubectl port-forward for prometheus metrics
```bash
$  kubectl port-forward prometheus-core-79648bf5cc-4zhq5 --namespace=monitoring 9090:9090
```
The application for promethus Check http://127.0.0.1:9090/graph
