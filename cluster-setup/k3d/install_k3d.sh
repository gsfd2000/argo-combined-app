#!/bin/bash
wget -q -O - https://raw.githubusercontent.com/rancher/k3d/main/install.sh | bash
export KUBECONFIG=$PWD/kubeconfig.yaml
