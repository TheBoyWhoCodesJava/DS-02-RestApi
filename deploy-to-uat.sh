#!/bin/bash

# Path to the WAR file generated by Jenkins
WAR_FILE="/target/02-RestAPI-PaytmApp-0.0.1-SNAPSHOT.war"

# Path to Tomcat's webapps directory
WEBAPPS_DIR="/opt/tomcat/webapps/"

# Transfer WAR file to Tomcat's webapps directory
scp -i "/home/kali/.ssh/private_key.pem" "$WAR_FILE" kali@localhost:"$WEBAPPS_DIR"

# Restart Tomcat to deploy the application
ssh -i "/home/kali/.ssh/private_key.pem" kali@localhost "sudo systemctl restart tomcat"

# Verify deployment status
echo "Deployment to production complete. Verifying application status..."
sleep 10 # Wait for Tomcat to restart
curl -sSf "http://localhost:7070/02-RestAPI-PaytmApp-0.0.1-SNAPSHOT.war" >/dev/null && echo "Application deployed successfully." || echo "Deployment failed."
