#!/bin/bash
export PATH=/root/dita-ot-4.2.3/bin:$PATH 
export DITA_HOME=/root/dita-ot-4.2.3
echo $PATH
echo $DITA_HOME
dita --version
dita -i $file_name -f $format -o $out_path
