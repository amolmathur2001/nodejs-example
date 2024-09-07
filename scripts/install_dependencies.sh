#!/bin/bash

# Navigate to the application directory
cd /var/www/nodejs-example

# Install application dependencies
npm install

# Install PM2 globally if it's not already installed
if ! command -v pm2 &> /dev/null
then
    echo "PM2 could not be found. Installing PM2..."
    npm install -g pm2
else
    echo "PM2 is already installed."
fi


# Optional: Run any additional setup commands if needed
# For example, if you have a build step, you can include it here
# npm run build
