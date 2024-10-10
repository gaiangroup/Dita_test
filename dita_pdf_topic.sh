#!/bin/bash

# Check if dita_val_name is set and not empty
if [ -n "$dita_val_name" ]; then
  # If dita_val_name is provided, include the -filter option
  dita -i "$file_name.dita" -f "$format" -o "$out_path" -filter "$dita_val_name.ditaval"
else
  # If dita_val_name is not provided, run the command without the -filter option
  dita -i "$file_name.dita" -f "$format" -o "$out_path"
fi
