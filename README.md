# homelab-gitops

With this Lab you will be able to access any service installed on this track, from any device in the same network(subnet)!

## Order2reproduce

### 00. Prepare environment

- Ubuntu 24.04 amd64
- Execute `install-base.sh`
    - Install docker, kubectl, helm, helmfile, network basics
    - Install Minikube
    - Enable MetalLB
    - Change IpAddress to MetalLB (change to your local network)

### 01. Install Basic HelmCharts to automate your environment.

- Execute `start-gitops.sh` to install the following charts.
    - external-dns
    - cert-manager
    - nginx
    - argo

### 02. Now everything is through ArgoCD.

- Waves
- App-to-Apps
- Sync
