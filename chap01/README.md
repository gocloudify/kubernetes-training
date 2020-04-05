# chap01 exercise

* Create Google Cloud Project named "chap01"
* Enable Google Compute Engine API and Google Kubernetes Engine API in that project
* Create a Google Kubernetes Cluster with 3 worker nodes with default options. 
* Open Google Cloud Shell
* Connect to GKE cluster created in step 3.
* Create a Deployment based on the YAML file.
```bash
kubectl apply -f https://k8s.io/examples/application/deployment.yaml
```

* Display information about the Deployment.

```bash
kubectl describe deployment nginx-deployment
```

* List the pods created by the deployment.

```bash
kubectl get pods -l app=nginx
```

* Display information about a pod

```bash
kubectl describe pod <pod-name>
```

* Update deployment
```bash
kubectl apply -f https://k8s.io/examples/application/deployment-update.yaml
```

* Verify that the Deployment has four pods

```bash
kubectl get pods -l app=nginx
```

* Delete the deployment by name:

```bash
kubectl delete deployment nginx-deployment
```

* Finish the following scenario on Katacoda.

https://www.katacoda.com/courses/kubernetes/playground
