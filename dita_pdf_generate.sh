#!/bin/bash
export PATH=/root/dita-ot-4.2.3/bin:$PATH 
export DITA_HOME=/root/dita-ot-4.2.3
dita -i $file_name.dita -f $format -filter $dita_val_name.ditval
