# Kubernetes Cluster Setup

This repository contains the Kubernetes boilerplate code that I use to host my own applications such as https://mccallister.dev, https://mccallister.io and some other personal applications.

## Batteries Included

This project is designed to be plug and play. Running through this setup will provide the following:

- Digital Ocean Managed Database (defaults to PostgreSQL)
- Digital Ocean Managed Kubernetes Cluster
- Digital Ocean Load Balancer
- Traefik

This will allow you to host multiple applications in a single Kubernetes cluster. The default setup will cost ~$55 per month. Choosing a larger database and adding more nodes to your Kubernetes cluster will incur more costs.

## Getting Started

This tool will provide a `Makefile` to create a cluster (defaults to `pg`).
