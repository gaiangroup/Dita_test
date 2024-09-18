#!/bin/bash
xsltproc $directory/$transform_name.xslt $directory/$data_name.xml > $directory/$out_file_name.dita
