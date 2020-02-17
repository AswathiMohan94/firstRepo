echo "enter any key to start :  "
read a
start=$( date +%s)
echo "start time is : $start"
echo "enter any key to stop : "
read b
stop=$( date +%s)
time_elapsed=$(( $stop - $start ))
echo  "elapsed time = $time_elapsed"
