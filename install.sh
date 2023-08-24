# First manually edit WANDB_ENTITY AND WANDB_API_KEY in robomimic/macros.py

# Mujoco Setup
wget https://mujoco.org/download/mujoco210-linux-x86_64.tar.gz -P ~/.mujoco/
tar -xf ~/.mujoco/mujoco210-linux-x86_64.tar.gz 
rm ~/.mujoco/mujoco210-linux-x86_64.tar.gz

# System wide dependencies
sudo apt-get install screen
sudo apt-get install libghc-x11-dev
sudo apt-get install libglew-dev
sudo apt-get install patchelf
sudo apt-get install ffmpeg

# Add to Bashrc
echo "export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$HOME/.mujoco/mujoco210/bin" >> ~/.bashrc
echo "export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/lib/nvidia" >> ~/.bashrc

# Python dependencies
pip install -r robomimic_requirements.txt