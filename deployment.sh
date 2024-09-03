#!/bin/bash
REPO_DIR="/path/to/repo"
SERVICE_NAME="myapp"

cd $REPO_DIR
git pull origin main

npm install
# Or for Python: pip install -r requirements.txt

sudo systemctl restart $SERVICE_NAME
echo "Deployment completed and service restarted."
