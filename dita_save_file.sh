#!/bin/bash

# Define the log file path (change this path to where you can access the file)
log_file="/root/dita_save_command_output.log"

# Start logging
{
  echo "Starting script..."

  echo "dita input values -- $dita_content $save_path $directory"

  # Check if the save_path ends with .dita, and append if not
  if [[ $save_path != *.dita ]]; then
    save_path="$save_path.dita"
    echo "save_path updated to $save_path."
  fi

  # Ensure the directory exists
  mkdir -p "$directory"
  if [[ $? -ne 0 ]]; then
    echo "Error creating directory $directory"
  else
    echo "Directory created or already exists: $directory."
  fi

  # Save the dita_content to the specified path
  echo "$dita_content" > "$directory/$save_path"
  if [[ $? -ne 0 ]]; then
    echo "Error writing to file $directory/$save_path"
  else
    echo "DITA content written to $directory/$save_path."
  fi

  echo "Script finished."

} >> "$log_file" 2>&1  # Redirect both stdout and stderr to the log file
