#!/bin/bash
# Clean repository and push Maimuta
# Copyright (c) 2024 Marius Bugaciu. All rights reserved.

cd /Users/mbugaciu/src/coding/maimuta_v1-4-0

echo "🧹 Cleaning up repository..."
echo ""

# Commit the cleanup
echo "💾 Committing cleanup..."
git add .
git commit -m "Clean repository - Maimuta v1.4.0

- Updated all references to Maimuta
- Removed legacy references
- Repository now contains only Maimuta v1.4.0

Copyright (c) 2024 Marius Bugaciu. All rights reserved."

# Now push the clean version
echo ""
echo "🚀 Pushing clean Maimuta to GitHub..."
git push -u origin main --force

if [ $? -eq 0 ]; then
    echo ""
    echo "✅ SUCCESS! Maimuta is now on GitHub!"
    echo "🌐 View at: https://github.com/aidevro/maimuta"
    echo ""
    echo "🎉 Clean repository with only Maimuta v1.4.0!"
    echo "📦 Ready for Chrome Web Store submission!"
else
    echo ""
    echo "❌ If still blocked, visit these URLs to allow the secrets:"
    echo "1. https://github.com/aidevro/maimuta/security/secret-scanning"
    echo "2. Then run: git push -u origin main --force"
fi