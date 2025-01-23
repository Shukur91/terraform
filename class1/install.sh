#!/bin/bash
# Step 1: Clone the tfenv repository
git clone https://github.com/tfutils/tfenv.git ~/.tfenv

# Step 2: Add tfenv to PATH
echo 'export PATH="$HOME/.tfenv/bin:$PATH"' >> ~/.bashrc

# Step 3: Reload the shell configuration
source ~/.bashrc




