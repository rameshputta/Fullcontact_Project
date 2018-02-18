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
$docker ps -a``` 

```bash
$ docker tag fullcontact_project ramesh0476/fullcontact_project:1.2
```
Push to docker hub

```bash
$ docker push ramesh0476/fullcontact_project```

Containerized application with kubernetes
```bash
kubectl create -f fullcontact_deployment.yaml 
```
Port-forwarding
```bash
kubectl port-forward fullcontact-deployment-86b489dc76-f2wrp --namespace=default 5000:5000```

The application with kubernetes will be accessible at http:127.0.0.1:5000 
