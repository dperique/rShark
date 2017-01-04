#!/usr/bin/bash

# Dennis Periquet, Mar 9, 2015.
#
if [ "$1" == "" ]; then
  echo ""
  echo "  Usage:"
  echo ""
  echo "  $0 <anIPAddress> <anInterface> <aFilter>"
  echo ""
  echo "    Will ssh to root@<anIPAddress> and run"
  echo "    tcpdump -nni <anInterface> <aFilter>"
  echo ""
  echo "    Examples:"
  echo ""
  echo "    rshark.sh 10.66.0.59 eth1 \"'port 500 or port 4500' and host 10.56.0.127\""
  echo "    rshark.sh 10.66.0.59 eth1 icmp"
  echo ""
  exit
fi
ssh root@$1 tcpdump -U -s0 -w - -nni $2 $3| wireshark -k -i -
