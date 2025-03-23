# VM_Assignment_3
Create a local VM and implement a mechanism to monitor resource usage. Configure it to auto-scale to a public cloud (e.g., GCP, AWS, or Azure) when resource usage exceeds 75%.
# Auto-Scaling Local VM to GCP

## Overview
This project creates a local VM and automatically scales it to GCP when CPU usage exceeds 75%. The system uses Prometheus for monitoring, Grafana for visualization, and GCP CLI for cloud integration.

## Features
- Local Windows VM with CPU monitoring
- Prometheus & Grafana for visualization
- Auto-scaling using GCP Compute Engine


## Prerequisites
- VirtualBox/VMware
- GCP Account
- GCP CLI & SDK
- Prometheus


## Installation & Execution
1. **Set up the local VM**  
2. **Configure Prometheus & Grafana**  
3. **Run CPU monitoring script**  
4. **Trigger GCP instance creation when usage > 75%**  


## License
MIT License
