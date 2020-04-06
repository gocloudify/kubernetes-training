# Chap02 README

* Create a google cloud project

```bash
gcloud projects create k8s-chap02
```

* Switch to newly created project

```bash
gcloud config set project k8s-chap02
```

* Enable billing for new project

```bash
gcloud alpha billing accounts list # To check the billing information for your google account.
gcloud alpha billing projects link k8s-chap02 --billing-account `gcloud alpha billing accounts list | awk '{print $1}' | sed -n '1!p'`
```

* Enable compute engine API, deployment manager API, Cloud DNS API & Kubernetes Engine API

```bash
gcloud services list --available | grep -i compute
gcloud services list --available | grep -i deployment
gcloud services list --available | grep -i dns
gcloud services list --available | grep -i container
gcloud services enable compute.googleapis.com deploymentmanager.googleapis.com dns.googleapis.com container.googleapis.com
```

* Create GCE VMs

```bash
gcloud deployment-manager deployments create --config=vm.yml rke-instances
```

* Download RKE binary

```bash
wget https://github.com/rancher/rke/releases/download/v1.0.6/rke_linux-amd64
sudo mv rke_linux-amd64 /usr/local/bin/rke
sudo chmod 755 /usr/local/bin/rke
rke --version
```

* Create RKE (Rancher Kubernetes Engine) cluster

```bash
cd 02.rke-cluster
rke up --config ./rke-cluster.yaml
```

* Test RKE cluster

```bash
export KUBECONFIG=$(pwd)/kube_config_rke-cluster.yaml
kubectl get nodes
kubectl get pods --all-namespaces
```

