#!/bin/bash
# Final push to GitHub with SSH
# Copyright (c) 2024 Marius Bugaciu. All rights reserved.

cd /Users/mbugaciu/src/coding/maimuta_v1-4-0

echo "🚀 Pushing Maimuta to GitHub with SSH..."
echo "Repository: git@github.com:aidevro/maimuta.git"
echo ""

# Check current remote
echo "📍 Current remote configuration:"
git remote -v
echo ""

# Push to GitHub
echo "🔄 Pushing to main branch..."
git push -u origin main --force

echo ""
echo "✅ Push completed!"
echo "🌐 View your repository at: https://github.com/aidevro/maimuta"
echo ""
echo "📦 Chrome Web Store ready files:"
echo "   - ZIP: Maimuta-v1.4.0-Chrome.zip"
echo "   - Privacy Policy: https://github.com/aidevro/maimuta/blob/main/PRIVACY_POLICY.md"
echo ""
echo "🎉 Maimuta is ready for publishing!"