# Max Gensyn Auto Setup

🧠 Fully automated Gensyn testnet setup (based on rl-swarm)

### ✅ Features:
- Installs all dependencies
- Auto answers testnet prompts (Y, A, 7, N)
- Only one manual OTP
- Auto-restarts on crash
- One-click setup from a fresh VPS

### ⚙️ Setup Instructions:

```bash
# 1. Clone repo
git clone https://github.com/Raghavrcc/maxgensyn.git
cd maxgensyn

# 2. Start screen session
screen -S max

# 3. Run setup
bash setup.sh

# 4. Wait for prompt, enter OTP manually

# 5. Detach screen: Ctrl+A then D
#    Reconnect anytime with:
screen -r max
