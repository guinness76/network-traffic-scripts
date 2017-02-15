# network-traffic-scripts

Note that these scripts can only run under Linux or a Linux VM. Also note that the traffic modification will only take effect on network traffic outside the system. This means that localhost network traffic will not be affected by the scripts.

slow.sh: slows all network traffic coming into or out of the system.<br>
kill.sh: blocks all network traffic coming into or out of the system.<br>
resume.sh: removes the traffic restrictions set by slow.sh or kill.sh.<br>
port-slow.sh: slows network traffic for a specific port.<br>
port-kill.sh: blocks network traffic for a specific port.<br>
port-resume.sh: removes the traffic restrictions set by port-slow.sh or port-kill.sh.<br>
port-attack.sh: opens connections to a remote host and port in a loop.<br>

For more information:
https://wiki.linuxfoundation.org/networking/netem
http://man7.org/linux/man-pages/man8/tc-netem.8.html

