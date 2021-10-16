#!/bin/sh
set -xe

# If path setting is not set, then use current directory
path=${PLUGIN_PATH:-.}
mkdir -p ${path}
cd ${path}

# Clones the public git repo and checkout to a branch
git clone ${PLUGIN_REPO_URL} .
git checkout ${PLUGIN_BRANCH}

# Prints the last commit
git log -1 --stat