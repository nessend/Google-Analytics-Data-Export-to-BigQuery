#!/bin/bash

# Define the list of configuration files
configs=("configWRP2.json" "configWRP3.json" "configWRP4.json" "configWRP5.json" "configWRP6.json" "configTH.json" "configTH2.json" "configTH3.json" "configTH4.json")

# Loop through each configuration file and call the Python script
for config in "${configs[@]}"; do
    echo "Processing $config..."
    python script.py --config "$config"
    echo "Finished processing $config"
done
