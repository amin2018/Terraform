# PowerShell Script to Create Terraform Project Structure

# Define the main directory name
$MainDir = "terraform_project"

# Create the main directory
New-Item -ItemType Directory -Path $MainDir

# Change to the main directory
Set-Location -Path $MainDir

# Create the main Terraform files
"main.tf", "variables.tf", "outputs.tf", "terraform.tfvars", "backend.tf", "providers.tf" | ForEach-Object {
    New-Item -ItemType File -Name $_
}

# Create modules directory and subdirectories for vm and persistent_disk
New-Item -ItemType Directory -Path "modules/vm", "modules/persistent_disk"

# Create Terraform files for each module
$modules = @(
    "vm", 
    "persistent_disk", 
    "gke", 
    "k8s_deployment", 
    "k8s_service", 
    "ingress_controller", 
    "cloud_sql", 
    "ssl_ingress"
)

# Create Terraform files for each module
foreach ($module in $modules) {
    $modulePath = "modules/$module"
    New-Item -ItemType Directory -Path $modulePath -Force
    foreach ($file in @("main.tf", "variables.tf", "outputs.tf")) {
        New-Item -ItemType File -Path "$modulePath/$file" -Force
    }
}

# Create environments directory and subdirectories for dev, test, and prod
New-Item -ItemType Directory -Path "environments/dev", "environments/test", "environments/prod"

# Create Terraform files for each environment
$environments = "dev", "test", "prod"
foreach ($env in $environments) {
    "main.tf", "variables.tf", "outputs.tf", "terraform.tfvars" | ForEach-Object {
        New-Item -ItemType File -Name "environments/$env/$_"
    }
}

Write-Host "Terraform project structure created successfully in $MainDir"
