sudo tc qdisc add dev eth0 root netem delay 300ms
#sudo tc qdisc add dev eth0 root netem rate 100Kbps
#sudo tc qdisc add dev eth0 root netem delay 50ms 2000ms 5% loss 5%
