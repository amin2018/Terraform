Terraform Project for Iseehear Inc.

This project employs Terraform for automating cloud infrastructure on Google Cloud Platform (GCP), focusing on deploying a Flask-based application with a Cloud SQL backend, within a Google Kubernetes Engine (GKE) cluster. It encapsulates best practices for infrastructure as code (IaC), containerization, and cloud-native deployment.

Prerequisites
Terraform installed and configured.
Access to a GCP account with the necessary APIs enabled.

Project Structure
main.tf: Main Terraform configuration file.
variables.tf: Variable definitions.
outputs.tf: Output definitions.
terraform.tfvars: Variable values for different environments.
backend.tf: Backend configuration for state management.
modules/: Contains Terraform modules for VMs, Persistent Disks, GKE, Kubernetes Deployments, Services, and more.
environments/: Configurations for dev, test, and prod environments.

Getting Started
Ensure all prerequisites are met.
Clone the repository and navigate to the project directory.
Initialize Terraform with terraform init.
Apply the Terraform configuration with terraform apply.

Usage Instructions
Modify terraform.tfvars as per the target environment requirements.
Use terraform plan to preview changes before applying.
Regularly use terraform fmt and terraform validate to ensure code quality.

License
This project is proprietary and confidential. For more details, see the LICENSE file.

Contact Information
Iseehear Inc., 250 University Avenue, Suite 200, Toronto, Ontario, Canada
Email: itsecurity@iseehear.com
Tel: 416-492-4358 | Toll-Free: 1 844 559 6322
For detailed instructions and project documentation, please refer to the individual markdown files provided within each module directory.