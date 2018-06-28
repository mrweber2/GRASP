#!/bin/bash

########################################################
#
#   Start sending data to AWS -- Hackvie 2018
#   Utilizes SunFounder Sensor Kit scripts and AWS iot
#
########################################################

# Stop script on error
set -e

# Python command including private key and certificate
printf "\nTransfering EMG data to AWS...\n"
python /home/pi/SunFounder_SensorKit_for_RPi2/Python/transfer_emg.py -t EMG -e a2dkeg6viohq6e.iot.us-west-2.amazonaws.com -r /home/pi/root-CA.crt -c /home/pi/nunyapi.cert.pem -k /home/pi/nunyapi.private.key
