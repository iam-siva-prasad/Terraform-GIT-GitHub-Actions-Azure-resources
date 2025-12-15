
# Terraform · Git · GitHub · Actions · Azure Resources

A complete CI/CD pipeline that deploys Azure resources using **Terraform**, **Git**, **GitHub**, and **GitHub Actions** with **OIDC (no secrets PAT)**. It enables secure, scalable, repeatable Infrastructure as Code (IaC) across **Dev / QA / Prod** environments.

!Pipeline

---

## 🚀 Key Features
- **IaC with Terraform**: Versioned, repeatable Azure infrastructure.
- **GitHub Actions CI/CD**: fmt → validate → plan → apply with approvals.
- **Secure Auth via OIDC**: Federated credentials—no long‑lived client secrets.
- **Multi-Env**: Isolated state & variables per environment.
- **Compliance**: Terraform format & validation gates; PR plans as comments.
- **State Backends**: Azure Storage remote state with locking via Azure Blob.

---

