#!/bin/bash
echo "Installing kube-bench..."
curl -L https://github.com/aquasecurity/kube-bench/releases/latest/download/kube-bench_amd64 -o kube-bench
chmod +x kube-bench
sudo mv kube-bench /usr/local/bin/
