**Brain Tasks App Deployment on AWS EKS using CI/CD**

**Project Overview**

This project demonstrates the deployment of the Brain Tasks React application into a production-ready Kubernetes environment on AWS using modern DevOps practices.

The application is containerized using Docker, stored in Amazon Elastic Container Registry (ECR), deployed on Amazon Elastic Kubernetes Service (EKS), and automated through AWS CodePipeline and AWS CodeBuild.

The deployment process follows industry-standard CI/CD practices and provides a scalable, reliable, and cloud-native application hosting environment.

---

**Project Information**

Application Name: Brain Tasks App

AWS Account ID: 145689194017

AWS Region: ap-south-1 (Mumbai)

EKS Cluster Name: brain-tasks-cluster

ECR Repository Name: brain-tasks-app

CodeBuild Project: brain-tasks-codebuild

CodePipeline Name: brain-tasks-pipeline

GitHub Repository: [https://github.com/JoyceJasmine-24/Brain-Task-App](https://github.com/JoyceJasmine-24/Brain-Task-App)

Application URL:

[http://acbcb3b93d50540e8935529aa5f3ad35-1197237262.ap-south-1.elb.amazonaws.com](http://acbcb3b93d50540e8935529aa5f3ad35-1197237262.ap-south-1.elb.amazonaws.com)

---

**Architecture Overview**

GitHub serves as the source code repository.

AWS CodePipeline continuously monitors the repository for changes and automatically triggers the deployment workflow.

AWS CodeBuild builds the Docker image and pushes it to Amazon ECR.

Amazon EKS pulls the container image from ECR and deploys the application into a Kubernetes cluster.

A Kubernetes LoadBalancer Service exposes the application to end users through a public endpoint.

---

**Technologies Used**

ReactJS

Docker

GitHub

Amazon ECR

Amazon EKS

AWS CodeBuild

AWS CodePipeline

AWS IAM

Amazon CloudWatch

Kubernetes

AWS Load Balancer

---

**Docker Configuration**

The application was containerized using Docker.

Docker Image Name:

brain-tasks-app

The Docker image was built successfully and tested locally before deployment.

Docker commands used:

docker build -t brain-tasks-app .

docker run -d -p 3000:80 brain-tasks-app

docker ps

---

**Amazon Elastic Container Registry (ECR)**

An Amazon ECR repository named brain-tasks-app was created to store container images.

Repository URI:

145689194017.dkr.ecr.ap-south-1.amazonaws.com/brain-tasks-app

The Docker image was successfully tagged and pushed to ECR.

Commands used:

aws ecr get-login-password --region ap-south-1 | docker login --username AWS --password-stdin 145689194017.dkr.ecr.ap-south-1.amazonaws.com

docker tag brain-tasks-app:latest 145689194017.dkr.ecr.ap-south-1.amazonaws.com/brain-tasks-app:latest

docker push 145689194017.dkr.ecr.ap-south-1.amazonaws.com/brain-tasks-app:latest

---

**Amazon Elastic Kubernetes Service (EKS)**

A Kubernetes cluster named brain-tasks-cluster was created and configured successfully.

The worker node joined the cluster and was verified in Ready state.

Cluster validation commands:

aws eks list-clusters --region ap-south-1

aws eks update-kubeconfig --region ap-south-1 --name brain-tasks-cluster

kubectl get nodes

Cluster Status: Active

Node Status: Ready

---

**Kubernetes Deployment**

A deployment manifest was created to deploy the Brain Tasks application into the Kubernetes cluster.

Deployment File:

k8s/deployment.yaml

Deployment Name:

brain-tasks

Replica Count:

1

Validation Commands:

kubectl apply -f k8s/deployment.yaml

kubectl get deployments

kubectl get pods

Deployment Status: Successful

Pod Status: Running

---

**Kubernetes Service**

A Kubernetes LoadBalancer service was created to expose the application externally.

Service File:

k8s/service.yaml

Service Name:

brain-tasks-service

Service Type:

LoadBalancer

Port:

80

Target Port:

80

Validation Commands:

kubectl apply -f k8s/service.yaml

kubectl get svc

kubectl describe svc brain-tasks-service

Service Status: Active

LoadBalancer Status: Created Successfully

---

**AWS CodeBuild**

A CodeBuild project named brain-tasks-codebuild was configured to automate the Docker build and image publishing process.

Build Environment:

Amazon Linux Managed Image

Privileged Mode Enabled

Build Specification File:

buildspec.yml

Build Process:

1. Authenticate with Amazon ECR.
2. Build Docker image.
3. Tag Docker image.
4. Push Docker image to ECR.

Build Status:

Succeeded

---

**AWS CodePipeline**

A CI/CD pipeline named brain-tasks-pipeline was created to automate the application deployment process.

Pipeline Stages:

Source Stage – GitHub Repository

Build Stage – AWS CodeBuild

Deploy Stage – Amazon EKS

Pipeline Status:

Succeeded

The pipeline automatically triggers whenever changes are pushed to the GitHub repository.

---

**CloudWatch Monitoring**

Amazon CloudWatch was configured for monitoring and troubleshooting.

The following logs are available:

Build Logs

Pipeline Logs

Deployment Logs

Application Logs

CloudWatch provides centralized monitoring for the entire deployment workflow.

---

**Application Validation**

The following commands were used to validate the deployment:

kubectl get nodes

kubectl get deployments

kubectl get pods

kubectl get svc

kubectl describe svc brain-tasks-service

All Kubernetes resources were successfully created and verified.

---

**Deployment Results**

Docker Image Successfully Created

Docker Image Successfully Pushed to Amazon ECR

Amazon EKS Cluster Successfully Configured

Kubernetes Deployment Successfully Created

Kubernetes Service Successfully Created

AWS CodeBuild Successfully Executed

AWS CodePipeline Successfully Executed

CloudWatch Monitoring Successfully Enabled

AWS LoadBalancer Successfully Created

Application Successfully Accessible Through Public URL

---

**Project Requirements Verification**

Dockerfile Creation – Completed

Docker Image Build – Completed

Amazon ECR Repository Creation – Completed

Image Push to ECR – Completed

Amazon EKS Cluster Setup – Completed

Deployment YAML Creation – Completed

Service YAML Creation – Completed

CodeBuild Project Creation – Completed

buildspec.yml Configuration – Completed

GitHub Source Control Integration – Completed

CodePipeline CI/CD Configuration – Completed

CloudWatch Monitoring – Completed

Application Deployment – Completed

LoadBalancer Endpoint Generation – Completed

---

**Application Access**

Public URL:

[http://acbcb3b93d50540e8935529aa5f3ad35-1197237262.ap-south-1.elb.amazonaws.com](http://acbcb3b93d50540e8935529aa5f3ad35-1197237262.ap-south-1.elb.amazonaws.com)

Current Status:

Application Running Successfully

Environment Status:

Production Ready

---

**Conclusion**

The Brain Tasks application was successfully deployed on AWS using a complete DevOps CI/CD workflow. Docker was used for containerization, Amazon ECR was used as the image registry, Amazon EKS was used for Kubernetes orchestration, AWS CodeBuild automated the image build process, AWS CodePipeline automated continuous deployment, and Amazon CloudWatch provided monitoring and logging capabilities.

The application is publicly accessible through an AWS LoadBalancer endpoint, and all project requirements specified in the assignment have been successfully completed.
