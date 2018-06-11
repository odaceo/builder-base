#!/bin/bash

# Update your local package index
apt-get update

# Install utility packages
apt-get install -y \
    wget \
    curl \
    unzip \
    ca-certificates

# Install packages for troubleshooting purpose
apt-get install -y \
    lsof \
    net-tools \
    netcat

# Install packages for development purpose
apt-get install -y \
    build-essential \
    git

# Remove the local package index
rm -rf /var/lib/apt/lists/*
