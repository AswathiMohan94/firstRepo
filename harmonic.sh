read -p 'n = ' n
c=0
echo "the nos are : "
for (( i=1;i<=$n;i++ ))
do
	a=`echo - | awk '{print '1' / '$i'}'`
	b=`echo - | awk '{print '$c' + '$a'}'`
	c=$b
	echo "$b"
done
echo "the  nth harmonic no is : $b"

	
