#!/bin/bash

echo "==================="

git confi --global user.name "${GITHUB_ACTOR}"
git confi --global user.email "${INPUT_EMAIL}"
git confi --global --add safe.directory /github/workspace

python3 /user/bin/feed.py

git add -A && git commit -m "Update Feed"
git push --set-upstream origin main

echo "==================="


