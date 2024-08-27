#!/bin/bash
echo $PATH
echo $DITA_HOME
dita --version
dita -i $file_name -f $format -o $out_path
