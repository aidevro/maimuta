#!/bin/bash
# Push Maimuta to GitHub
# Copyright (c) 2024 Marius Bugaciu. All rights reserved.

echo "📦 Preparing to push Maimuta to GitHub..."

# Navigate to the maimuta directory
cd /Users/mbugaciu/src/coding/maimuta_v1-4-0

# Initialize git repository
echo "🔧 Initializing git repository..."
git init

# Configure git user
echo "👤 Configuring git user..."
git config user.name "Marius Bugaciu"
git config user.email "aidevro@github.com"

# Add all files
echo "📁 Adding all files..."
git add .

# Create initial commit
echo "💾 Creating initial commit..."
git commit -m "Initial commit: Maimuta v1.4.0 - Userscript Manager for Chrome

Maimuta is a Manifest V3 compliant userscript manager that allows users to:
- Install and manage userscripts
- Full GM API support
- Romanian flag themed UI
- Works on all websites

Copyright (c) 2024 Marius Bugaciu. All rights reserved."

# Add remote repository
echo "🔗 Adding remote repository..."
git remote add origin git@github.com:aidevro/maimuta.git

# Push to GitHub
echo "🚀 Pushing to GitHub..."
git branch -M main
git push -u origin main

echo "✅ Successfully pushed Maimuta to GitHub!"
echo "🌐 View at: https://github.com/aidevro/maimuta"