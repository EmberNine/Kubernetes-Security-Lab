# Kubernetes Security Lab

##  Goal
Deploy and secure a containerized app in Kubernetes using RBAC, network policies, image scanning, and runtime threat detection.

##  Stack
- Minikube (or AWS EKS)
- Docker
- Falco (Runtime Security)
- Kyverno (Policy Enforcement)
- kube-bench (CIS Benchmark Scanning)

##  Folder Structure
- `manifests/`: Kubernetes YAMLs
- `docker/`: Dockerfile for demo app
- `scripts/`: Setup and security test scripts
- `.github/`: GitHub Actions for scanning

##  Getting Started

```bash
minikube start
eval $(minikube docker-env)
docker build -t demo-app:latest ./docker
kubectl apply -f manifests/app/
kubectl apply -f manifests/security/
```

##  Security Hardening
Includes RBAC, Network Policies, Kyverno, Kube-bench, and Falco configurations.

##  GitHub Actions
See `.github/workflows/security-scan.yml`
