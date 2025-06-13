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




CIS Security Benchmark Findings
This lab was scanned using kube-bench against the CIS Kubernetes Benchmark.

Top Findings:

Control ID	Description	Portfolio Response
5.1.1	Cluster-admin role overuse	Scoped roles would be used in production
5.1.2	Secret access not restricted	RoleBindings would be tightened in prod
5.1.3	Wildcard (*) permissions used in RBAC roles	Would be replaced with specific permissions
5.1.4	Broad pod creation rights	Only CI/CD systems would be allowed this
5.1.5	Default service accounts used	Would use scoped service accounts per workload
5.1.6	Service tokens mounted by default	Explicitly disabled where not required

These are common in default clusters like Minikube. I’ve documented them as part of my security review process.