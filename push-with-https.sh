#!/bin/bash
# Push Maimuta using HTTPS authentication
# Copyright (c) 2024 Marius Bugaciu. All rights reserved.

echo "🔄 Switching to HTTPS authentication..."
cd /Users/mbugaciu/src/coding/maimuta_v1-4-0

# Remove SSH remote
git remote remove origin

# Add HTTPS remote
echo "🔗 Adding HTTPS remote..."
git remote add origin https://github.com/aidevro/maimuta.git

# Push to GitHub
echo "🚀 Pushing to GitHub (you'll need to enter your GitHub username and password/token)..."
git push -u origin main --force

echo ""
echo "✅ If successful, view at: https://github.com/aidevro/maimuta"
echo ""
echo "💡 TIP: Use a Personal Access Token instead of password:"
echo "   1. Go to GitHub → Settings → Developer Settings → Personal Access Tokens"
echo "   2. Generate new token with 'repo' scope"
echo "   3. Use the token as password when prompted"