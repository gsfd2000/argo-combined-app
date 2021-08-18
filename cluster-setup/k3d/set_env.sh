# Source: https://gist.github.com/48f44d3974db698d3127f52b6e7cd0d3

###########################################################
# Automation of Everything                                #
# How To Combine Argo Events, Workflows, CD, and Rollouts #
# https://youtu.be/XNXJtxkUKeY                            #
###########################################################

# Requirements:
# - k8s v1.19+ cluster with nginx Ingress

# Replace `[...]` with the GitHub organization or the username
export GH_ORG=gsfd2000

# Replace `[...]` with the base host accessible through NGINX Ingress
export BASE_HOST=[...] # e.g., $INGRESS_HOST.nip.io

export REGISTRY_SERVER=https://index.docker.io/v1/

# Replace `[...]` with the registry username
export REGISTRY_USER=[...]

# Replace `[...]` with the registry password
export REGISTRY_PASS=[...]

# Replace `[...]` with the registry email
export REGISTRY_EMAIL=[...]

# Replace `[...]` with the GitHub token
export GH_TOKEN=[...]

# Replace `[...]` with the GitHub email
export GH_EMAIL=[...]
