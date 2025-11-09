#!/bin/bash
# Reset git history with clean commit
# Copyright (c) 2024 Marius Bugaciu. All rights reserved.

cd /Users/mbugaciu/src/coding/maimuta_v1-4-0

echo "🔄 Resetting git history to remove all old contributors..."
echo ""

# Save current branch name
BRANCH=$(git branch --show-current)

# Remove the old .git directory
echo "📦 Creating fresh git repository..."
rm -rf .git

# Initialize new repository
git init

# Configure git user (ONLY Marius Bugaciu)
echo "👤 Setting author: Marius Bugaciu"
git config user.name "Marius Bugaciu"
git config user.email "marius.bugaciu@gmail.com"

# Add all files
echo "📁 Adding all clean files..."
git add .

# Create single clean commit
echo "💾 Creating clean initial commit..."
git commit -m "Initial commit: Maimuta v1.4.0 - Userscript Manager for Chrome

Maimuta is a Manifest V3 compliant userscript manager that allows users to:
- Install and manage userscripts from any URL
- Full Greasemonkey API support (GM_xmlhttpRequest, GM_getValue, etc.)
- Auto-update checking for installed scripts
- Beautiful Romanian flag themed UI
- Works on all websites with user control

Features:
✅ Full Manifest V3 compliance
✅ GM_* API support
✅ Auto-install from .user.js URLs
✅ Install from local files
✅ Auto-update checking for scripts
✅ Script editor with metadata parsing
✅ Enable/disable scripts
✅ Pattern matching (@match, @include, @exclude)

Copyright (c) 2024 Marius Bugaciu. All rights reserved."

# Add remote
echo "🔗 Adding GitHub remote..."
git remote add origin git@github.com:aidevro/maimuta.git

# Set main branch
git branch -M main

echo ""
echo "✅ Git history reset complete!"
echo "📝 Only commit author: Marius Bugaciu"
echo "🧹 No references to eusovops or Claude"
echo ""
echo "Ready to push. Run:"
echo "  git push -u origin main --force"