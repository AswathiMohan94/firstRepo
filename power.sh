n=$1
echo "the table of power of 2  : "
echo "the limit is $n "
for ((i=1;i<=n;i++))
do
	c=`echo - | awk '{print '2' ^ '$i'}'`
	echo "$c"
done



