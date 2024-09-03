# DevOps-Bash-Scripts

Welcome to the **DevOps-Bash-Scripts** repository! This collection of bash scripts is designed to help automate common tasks in a DevOps environment. Each script is crafted to address specific needs, from system monitoring to user management and application deployment.

## Table of Contents

- [Overview](#overview)
- [Scripts](#scripts)
  - [Automated Backup Script]()
  - [System Monitoring Script](#2-system-monitoring-script)
  - [User Management Script](#3-user-management-script)
  - [Deployment Script](#4-deployment-script)
  - [Log Rotation Script](#5-log-rotation-script)

## Overview

This repository contains bash scripts that automate various DevOps tasks. These scripts are intended to be simple yet powerful tools that you can use in your daily workflow. Whether you need to automate backups, monitor system resources, or manage user accounts, these scripts have you covered.

## Scripts

### 1. Automated Backup Script

- **Purpose:** Regularly back up important directories and files, compress the backups, and optionally upload them to a remote server.
- **File:** `backup.sh`
- **Features:**
  - Creates timestamped backups of specified directories.
  - Compresses backups into a `.tar.gz` file.
  - Optionally uploads backups to a remote server using `scp`.

### 2. System Monitoring Script

- **Purpose:** Monitor system metrics like CPU, memory, and disk usage, logging data and sending alerts when thresholds are exceeded.
- **File:** `system_monitor.sh`
- **Features:**
  - Logs CPU, memory, and disk usage to a file.
  - Sends alerts if resource usage exceeds specified thresholds.
  - Designed to run as a cron job for continuous monitoring.

### 3. User Management Script

- **Purpose:** Automate user account creation, modification, and deletion.
- **File:** `user_management.sh`
- **Features:**
  - Creates new users with home directories.
  - Changes user passwords.
  - Deletes users and their home directories.

### 4. Deployment Script

- **Purpose:** Automate the deployment of applications, including pulling the latest code, installing dependencies, and restarting services.
- **File:** `deployment.sh`
- **Features:**
  - Pulls the latest code from a Git repository.
  - Installs dependencies (e.g., via `npm` or `pip`).
  - Restarts the application service using `systemctl`.

### 5. Log Rotation Script

- **Purpose:** Manage and rotate log files to prevent them from growing too large.
- **File:** `log_rotation.sh`
- **Features:**
  - Archives old log files and compresses them.
  - Deletes old log archives after a specified number of days.

