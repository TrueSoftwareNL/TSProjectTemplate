#!/usr/bin/env bash

# Configuration
TEMPLATE_REPO="https://github.com/TrueSoftwareNL/TSProjectTemplate.git"

# Ask for project name
read -rp "Enter a name for your new project: " PROJECT_NAME

# Validate input
if [[ -z "$PROJECT_NAME" ]]; then
  echo "❌ Project name cannot be empty."
  exit 1
fi

if [[ -d "$PROJECT_NAME" ]]; then
  echo "❌ Directory '$PROJECT_NAME' already exists."
  exit 1
fi

# Clone the template repo shallowly
echo "🔄 Cloning template..."
git clone --depth 1 "$TEMPLATE_REPO" "$PROJECT_NAME" || exit 1

# Remove original Git history
cd "$PROJECT_NAME" || exit 1
rm -rf .git
rm ./create-project.sh

# Reinitialize Git
echo "🔧 Initializing new Git repository..."

git init
git add .
git commit -m "Initial commit from template"

echo "🔧 Initializing packages..."
yarn && yarn ncu

echo "✅ Project '$PROJECT_NAME' is ready."
