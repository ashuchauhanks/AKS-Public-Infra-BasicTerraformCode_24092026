# AKS-Public-Infra-BasicTerraformCode_24092026
simple terraform code/ aks public infra/ simple ADO cicd

# 🚀 AKS Public Infrastructure – Terraform

> Infrastructure as Code (IaC) project for provisioning and managing Azure Kubernetes Service (AKS) infrastructure using Terraform.

![Terraform](https://img.shields.io/badge/Terraform-IaC-623CE4?logo=terraform&logoColor=white)
![Azure](https://img.shields.io/badge/Microsoft-Azure-0078D4?logo=microsoftazure&logoColor=white)
![AKS](https://img.shields.io/badge/Kubernetes-AKS-326CE5?logo=kubernetes&logoColor=white)
![GitHub](https://img.shields.io/badge/GitHub-181717?logo=github&logoColor=white)

---

## 📌 Project Overview

This project contains Terraform code for provisioning and managing an Azure Kubernetes Service (AKS) environment.

The infrastructure follows a modular Terraform structure with separate environment-specific configurations.

### 🎯 Objectives

- Provision Azure infrastructure using Terraform
- Deploy and manage an AKS cluster
- Use reusable Terraform modules
- Maintain environment-specific configurations
- Follow Infrastructure as Code best practices
- Version-control infrastructure using Git
- Prepare infrastructure for CI/CD automation using Azure DevOps

---

## 🏗️ Infrastructure Architecture

```text
                    ┌──────────────────────────┐
                    │      Microsoft Azure     │
                    │                          │
                    │   ┌──────────────────┐   │
                    │   │       AKS        │   │
                    │   │   Kubernetes     │   │
                    │   │     Cluster      │   │
                    │   └──────────────────┘   │
                    │                          │
                    │   Azure Infrastructure   │
                    └────────────┬─────────────┘
                                 │
                              Terraform
                                 │
                    ┌────────────▼─────────────┐
                    │ Infrastructure as Code   │
                    │        Terraform         │
                    └──────────────────────────┘



| Category           | Technologies                   |
| ------------------ | ------------------------------ |
| ☁️ Cloud           | Microsoft Azure                |
| 🏗️ IaC            | Terraform                      |
| ☸️ Kubernetes      | Azure Kubernetes Service (AKS) |
| 🔧 Version Control | Git, GitHub                    |
| 🚀 CI/CD           | Azure DevOps *(Coming Soon)*   |
