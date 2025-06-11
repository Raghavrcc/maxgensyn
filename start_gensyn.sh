#!/bin/bash

echo "🖥️ Creating screen session..."
screen -S max -dm bash -c "cd ~/maxgensyn && bash setup.sh && bash auto_run.sh"

echo "✅  All set! Switch to screen using: screen -r max"
