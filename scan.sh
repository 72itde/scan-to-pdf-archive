#!/bin/bash

# configuration

output_directory="$HOME/Nextcloud/Scan"
device_name="epsonds:libusb:004:009"                                     # find it via scanimage -L


# variables

mydatetime=`date +"%Y%m%d_%H%M%S"`


# checks

if [ ! -d $output_directory ]; then
  echo "error: output_directory does not exist. Please create or change your configuration"
  exit 1
fi


# run the scan tool(s)

scanimage --device-name="${device_name}" --progress --batch="${output_directory}/scan_${mydatetime}_page_%d.pdf" --batch-print --source="ADF Duplex" --mode="Color" --depth="8" --resolution="600" --format=pdf -x 210 -y 297

