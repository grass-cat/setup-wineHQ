#!/bin/bash

# Download
wget https://raw.githubusercontent.com/grass-cat/setup-wineHQ/main/mn.sh -O temp_script.sh

# PERMISSION
chmod +x temp_script.sh

# Execute
./temp_script.sh

# Clean
rm temp_script.sh
