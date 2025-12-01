# Secure Software Supply Chain w/ Containers

## 1. Prerequisites

### Install required tools

#### Windows

`winget install`  
git  
docker  
kubectl  
kind  
cosign  
syft  
grype  

#### MacOS

`brew install`

### Verify installations

`git --version`  
`docker --version`  
`kubectl version --client --output=yaml`  
`kind version`  
`cosign version`  
`syft version`  
`grype version`  

## 2. Establish Repo

### Create Repo in GitHub

#### Create Repo

#### Protect `main` Branch

Settings -> Rulesets -> New ruleset -> New branch ruleset  
`Require a pull request before merging`  
Show additional settings  
`Required approvals` = 1  
Save

#### Verify GitHub Actions Enabled

#### Verify Ability to Write Packages (GitHub Container Registry)

### Clone Repo Locally

### Create Seed for Repo

#### Create Simple Web Application

`python -m pip install --upgrade pip`
`pip install flask==3.0.0`
`python .\app.py`

Test using browser and URL: `localhost:8080`  
or  
`Invoke-WebRequest http://localhost:8080 | Select-Object -ExpandProperty Content`

#### Pull a Base Image and Capture Digest

#### Create Dockerfile and Pin Base Digest

`docker build -t demoapp:local .`
`docker run --rm -p 8080:8080 demoapp:local`

Test using browser and URL: `localhost:8080`  
or  
`Invoke-WebRequest http://localhost:8080 | Select-Object -ExpandProperty Content`

#### Push Seed to Remote Repo

## 3. Signing and Secrets

### Create Cosign Digital Signature

#### Generate Key Pair

#### Add Secret to GitHub Repo

#### (Optional) Push images to Docker Hub w/ Secrets

## 4. GitHub Actions Workflow

### Create Initial Workflow File

### Push Workflow to Repo

## 5. Create Local Kubernetes Cluster w/ kind

### Create Local Cluster

## 6. Install Kyverno and Load Cosign Public Key

### Install Kyverno and Verify Pod

### Create Secret w/ Public Key

## 7. Establish Kubernetes Admission Policy (hygeine + signature verification)

### Prevent `:latest` Tag

### Require Valid Signature

## 8. Trigger Pipeline Build

### Trigger Change

### Get Digest

## 9. Create Failing Deployment

### Create Manifest Using `:latest`

### (Optional) Create Manifest with Unsigned Image

## 10. Create Passing Deployment

### Deploy Image by Digest

## 11. Create and Store Evidence

### Download SBOM and Scan Reports

### Verify Image Signature

### Verify Admission Decisions

### Commit Evidence for Storage