#!/bin/bash

echo "📦 Cloning Gensyn repo..."
git clone https://github.com/gensyn-ai/rl-swarm.git ~/rl-swarm
cd ~/rl-swarm

echo "📁 Setting up Python virtual environment..."
python3 -m venv .venv
source .venv/bin/activate

echo "📦 Installing JS dependencies..."
cd modal-login
yarn install
yarn upgrade
yarn add next@latest
yarn add viem@latest
cd ..

yarn add -D pino-pretty

echo "🧹 Replacing layout.tsx..."
rm -rf modal-login/app/layout.tsx
curl -o modal-login/app/layout.tsx https://raw.githubusercontent.com/Mayankgg01/Gensyn-ai-Rl-Swarm_Guide/main/rl-swarm/modal-login/app/layout.tsx

echo "⚙️ Editing config YAML..."
CONFIG_FILE="hivemind_exp/configs/mac/grpo-qwen-2.5-0.5b-deepseek-r1.yaml"
sed -i 's/torch_dtype:.*/torch_dtype: float32/' $CONFIG_FILE
sed -i 's/bf16:.*/bf16: false/' $CONFIG_FILE
sed -i 's/gradient_checkpointing:.*/gradient_checkpointing: false/' $CONFIG_FILE
sed -i 's/per_device_train_batch_size:.*/per_device_train_batch_size: 1/' $CONFIG_FILE

echo "🚀 Ready to launch node. Now running auto_login.exp..."
chmod +x ~/maxgensyn/auto_login.exp
expect ~/maxgensyn/auto_login.exp
