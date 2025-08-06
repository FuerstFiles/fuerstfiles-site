#!/bin/bash
timestamp=$(date -u +"%a, %b %d, %Y, %I:%M %p UTC")

# Cross-platform sed (macOS vs Linux)
if [[ "$OSTYPE" == "darwin"* ]]; then
  sed -i '' "s|<!--DEPLOY_TIME-->|<strong>Last Deploy:</strong> $timestamp|g" index.html
else
  sed -i "s|<!--DEPLOY_TIME-->|<strong>Last Deploy:</strong> $timestamp|g" index.html
fi