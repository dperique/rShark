# rShark
Utility to run remote tcpdump and capture output to wireshark

```
     Will ssh to root@<anIPAddress> and run:
     
      tcpdump -nni <anInterface> <aFilter>
  
     Examples:
  
      rshark.sh 10.66.0.59 eth1 \"'port 500 or port 4500' and host 10.56.0.127\"
      rshark.sh 10.66.0.59 eth1 icmp
```

The idea is that you have a remote device that does not have wireshark but has tcpdump and then you want to see the tcdpump output in wireshark.  It works best when you setup passwordless login to the remote device running tcpdump.
