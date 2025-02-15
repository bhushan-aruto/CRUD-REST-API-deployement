# 🚀 CRUD-REST-API Deployment  

A **simple automation script** to deploy a **Go-based CRUD REST API** from a **physical device** to a **VM (EC2 instance)** using **SSH & Git**.  

## 📌 Features  
🔹 **Removes old files** from the VM 🗑️  
🔹 **Fetches the latest code** from GitHub 🌍  
🔹 **Transfers environment variables** securely 🔐  
🔹 **Installs dependencies** using `go mod tidy` 📦  
🔹 **Builds the Go project** 🏗️  
🔹 **Runs the compiled API binary** 🚀  

## 🛠️ Deployment Steps  

### 1️⃣ Ensure **SSH access** to the VM  
- Make sure you have the correct SSH key: `crud-server-access-key.pem` 🔑  

### 2️⃣ Run the deployment script  
```sh
bash deploy.sh
