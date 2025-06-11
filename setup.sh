#!/bin/bash

echo "🔧 Updating system and installing dependencies..."

sudo apt update && sudo apt install -y \
  python3 python3-venv python3-pip curl wget screen git lsof gnupg2

curl -fsSL https://deb.nodesource.com/setup_20.x | sudo -E bash -
sudo apt install -y nodejs

curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
sudo apt update && sudo apt install -y yarn

echo "✅ Dependencies installed: node, npm, yarn, python"
