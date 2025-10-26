📘 README.md
# Infrastructure as Code (IaC) with Terraform — Docker Container Deployment

## 🎯 Objective
Provision a local Docker container using Terraform to understand Infrastructure as Code (IaC) principles.

---

## 🧰 Tools Used
- Terraform
- Docker

---

## ⚙️ Steps Performed

### 1️⃣ Initialize Terraform
```bash
terraform init | tee terraform-init.log

2️⃣ Preview Plan
terraform plan | tee terraform-plan.log

3️⃣ Apply Configuration
terraform apply -auto-approve | tee terraform-apply.log

4️⃣ Verify Deployment
docker ps


Visit: http://localhost:8081

5️⃣ Check Terraform State
terraform state list

6️⃣ Destroy Infrastructure
terraform destroy -auto-approve | tee terraform-destroy.log

🧱 Output

NGINX container deployed successfully using Terraform.

Verified running on port 8081.

🧩 Files Included
File	Description
main.tf	Terraform configuration file
terraform-init.log	Output of initialization
terraform-plan.log	Terraform plan output
terraform-apply.log	Apply output
terraform-destroy.log	Destroy output
✅ Outcome

Successfully provisioned and destroyed Docker container infrastructure using Terraform, demonstrating IaC automation
