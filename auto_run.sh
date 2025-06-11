#!/bin/bash

# Clone your custom repo or prepare folder
rm -rf rl-swarm
git clone https://github.com/kuberfreak/Gensyn-RL-Swarm.git rl-swarm
cd rl-swarm

# Install dependencies
yarn install

# Install required packages
yarn add viem@2.31.0
yarn add pino-pretty@13.0.0

# Replace layout.tsx
curl -o src/app/layout.tsx https://raw.githubusercontent.com/kuberfreak/KuberFreak-Gensyn-Script/main/layout.tsx

# Edit config.yaml
sed -i 's/use_testnet: false/use_testnet: true/' config.yaml

cd ..
echo "🚀 Ready to launch node. Now running auto_login.exp..."
./auto_login.exp
