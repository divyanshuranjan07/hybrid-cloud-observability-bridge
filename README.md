# Hybrid Cloud Observability Bridge

A Terraform-managed hybrid infrastructure monitoring stack bridging AWS EC2 and local VMware environments using Prometheus and Grafana.

A DevOps project demonstrating the provisioning of hybrid infrastructure using Terraform (IaC) and cross-platform monitoring using Prometheus and Grafana. This project bridges a local VMware Workstation environment with a public cloud in AWS (ap-south-1).

## 🏗️ Architecture
* **Cloud Provider:** AWS (Mumbai Region)
* **Infrastructure as Code:** Terraform
* **Local Environment:** VMware Workstation (Ubuntu 22.04)
* **Monitoring Stack:** Prometheus, Grafana, Node Exporter
* **Containerization:** Docker & Docker Compose

## 🚀 Features
* **Automated Provisioning:** Uses Terraform to deploy EC2 instances with custom Security Groups and SSH Key Pair integration.
* **Hybrid Connectivity:** Establishes a monitoring bridge between local virtualized environments and public cloud resources.
* **Real-time Observability:** Tracks CPU, Memory, and Network metrics using Node Exporter.
* **Visualization:** Interactive Grafana dashboards for infrastructure health monitoring.

## 🚦 Current Status
* [x] Phase 1: AWS Infrastructure provisioned via Terraform.
* [x] Phase 2: Node Exporter deployed on Cloud Node.
* [/] Phase 3: Prometheus/Grafana integration (Active Development).

## 🛠️ Project Structure
```text
.
├── terraform/
│   ├── main.tf            # EC2 & Security Group definitions
│   ├── provider.tf        # AWS Provider configuration
│   └── outputs.tf         # Infrastructure output variables
├── monitoring/
│   ├── docker-compose.yml # Prometheus & Grafana stack
│   └── prometheus.yml     # Scrape configurations for AWS & Local nodes
└── README.md
```
