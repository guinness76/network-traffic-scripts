#sudo tc qdisc add dev eth0 root netem delay 5000ms

sudo tc qdisc add dev eth0 handle 2: root htb
sudo tc class add dev eth0 parent 2: classid 2:1 htb rate 1000Mbps
sudo tc class add dev eth0 parent 2:1 classid 2:12 htb rate 100Mbps
sudo tc filter add dev eth0 protocol ip prio 1 u32 match ip sport 3306 0xffff flowid 2:12
sudo tc filter add dev eth0 protocol ip prio 1 u32 match ip dport 3306 0xffff flowid 2:12
sudo tc qdisc add dev eth0 parent 2:12 handle 10: netem delay 300ms
