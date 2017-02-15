attempts=100
remoteAddr=10.20.6.42
remotePort=8750

for ((a=0; a < attempts ; a++))
do
  echo -n "."	# -n means do not print a newline
  nc $remoteAddr $remotePort &
done

echo "Done"  
