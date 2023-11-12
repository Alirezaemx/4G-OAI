#!/bin/sh
tshark -i public -f 'port 3868 or port 2123 or port 36412 or port 36422 or port 46520 or port 8805' -w /tmp/4G-OAI.pcap
echo "Your PCAP File in /tmp/4G-OAI.pcap"
