# Monitoring and Observability

## Overview

This project implements a monitoring and observability solution using Prometheus, Node Exporter, and Grafana.

The monitoring stack provides real-time visibility into the performance and health of the Jenkins server.

## Architecture

Node Exporter → Prometheus → Grafana

- Node Exporter collects system-level metrics.
- Prometheus scrapes and stores the collected metrics.
- Grafana uses Prometheus as a data source for visualization.

## Node Exporter

Node Exporter was configured on the Jenkins server to expose system metrics on port 9100.

The collected metrics include:

- CPU utilization
- Memory utilization
- Disk usage
- Network traffic
- System load
- System uptime

## Prometheus

Prometheus was configured to scrape Node Exporter metrics.

Configured target:

- Job: node_exporter
- Target: localhost:9100

Prometheus runs on port 9090.

## Grafana

Grafana was integrated with Prometheus as its data source.

The Node Exporter Full dashboard was configured to visualize:

- CPU usage
- Memory usage
- Disk utilization
- Network traffic
- System load
- System uptime

Grafana runs on port 3000.

## Alerting

A High CPU Usage alert rule was configured in Grafana.

The alert monitors CPU utilization and can trigger when CPU usage exceeds the configured threshold of 80%.

## Annotations

Grafana annotations were configured to correlate Jenkins Terraform deployment activities with infrastructure performance metrics.

This helps identify the impact of deployments on system performance.

## Outcome

The monitoring and observability implementation provides:

- Real-time infrastructure monitoring
- Centralized metrics collection
- Infrastructure performance visualization
- Proactive alerting
- Deployment event correlation
- Improved visibility into system health