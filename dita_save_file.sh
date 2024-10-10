#!/bin/bash
if [[ $save_path != *.dita ]]; then
  save_path="$save_path.dita"
fi

echo "$dita_content" > "$directory/$save_path"
