#!/bin/bash

# Navigate to the application directory
cd /var/www/nodejs-example

# Start the application using PM2
pm2 start app.js --name nodejs-example --watch

# Optional: Check if the application started successfully
if pm2 status nodejs-example | grep -q "online"; then
    echo "Application started successfully."
else
    echo "Failed to start the application."
    exit 1
fi
