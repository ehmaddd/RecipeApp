#!/bin/bash

# Assuming your repository is named 'my-rails-app'
REPO_NAME="my-rails-app"

# Navigate to your Rails app's directory
cd /path/to/your/rails/app

# Update your code from the Git repository
git pull origin main

# Install dependencies
bundle install

# Precompile assets
bundle exec rake assets:precompile

# Clean up assets
bundle exec rake assets:clean

# Restart the Rails server
touch tmp/restart.txt

# Optionally, you might want to clear cache or perform other tasks

echo "Deployment completed."
