#!/bin/bash
curl -s https://raw.githubusercontent.com/rancher/k3d/main/install.sh > install.sh
# PATH=/usr/local/bin:$PATH

# shit redhat docker installation problem creator removal
sudo yum remove -y podman
sudo yum remove -y buildah

# docker installation
sudo yum install -y yum-utils
sudo yum-config-manager \
    --add-repo \
    https://download.docker.com/linux/centos/docker-ce.repo

sudo yum install -y docker-ce docker-ce-cli containerd.io

sudo usermod -a -G docker vagrant

sudo systemctl start docker
sudo systemctl status docker --no-pager

#kubectl installation
sudo cp ./kubernetes.repo /etc/yum.repos.d
sudo yum install -y kubectl
kubectl version

# k3d installation
bash install.sh
# export KUBECONFIG=$PWD/kubeconfig.yaml
k3d version
