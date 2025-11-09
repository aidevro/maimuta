#!/bin/bash
# Fix SSH and push Maimuta to GitHub
# Copyright (c) 2024 Marius Bugaciu. All rights reserved.

cd /Users/mbugaciu/src/coding/maimuta_v1-4-0

echo "🔧 Fixing Git configuration for aidevro..."
echo ""

# Set correct git config
echo "📝 Setting correct git user..."
git config user.name "Marius Bugaciu"
git config user.email "marius.bugaciu@gmail.com"

# Show current config
echo "📍 Current git configuration:"
git config user.name
git config user.email
echo ""

# Check SSH authentication
echo "🔑 Testing SSH authentication..."
ssh -T git@github.com 2>&1 | grep -E "Hi|authenticated"
echo ""

# Update remote to ensure it's correct
echo "🔗 Ensuring remote is set correctly..."
git remote remove origin 2>/dev/null
git remote add origin git@github.com:aidevro/maimuta.git
git remote -v
echo ""

# Try to push
echo "🚀 Pushing Maimuta to aidevro/maimuta..."
git push -u origin main --force 2>&1

# Check result
if [ $? -eq 0 ]; then
    echo ""
    echo "✅ SUCCESS! Maimuta has been pushed to GitHub!"
    echo "🌐 View at: https://github.com/aidevro/maimuta"
    echo ""
    echo "📋 Next steps for Chrome Web Store:"
    echo "1. Privacy Policy URL: https://github.com/aidevro/maimuta/blob/main/PRIVACY_POLICY.md"
    echo "2. Upload ZIP: Maimuta-v1.4.0-Chrome.zip"
    echo "3. Fill in the permission justifications we prepared"
    echo ""
    echo "🎉 Maimuta is ready for the world!"
else
    echo ""
    echo "❌ Push failed. Let's try with HTTPS instead..."
    echo ""
    # Switch to HTTPS
    git remote set-url origin https://github.com/aidevro/maimuta.git
    echo "📝 Switched to HTTPS. Please run:"
    echo "   git push -u origin main --force"
    echo ""
    echo "When prompted:"
    echo "   Username: aidevro"
    echo "   Password: [use your Personal Access Token]"
    echo ""
    echo "To create a token: https://github.com/settings/tokens"
fi