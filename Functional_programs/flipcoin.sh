echo "no of times the coin need to be flipped : "
read n
h=0
t=0
echo "the values when coin is flipped $n times : "
for((i=1;i<=n;i++))
do
	a=$(($RANDOM%2))
	if(($a==0))
	then
		echo "head"
		let "h+=1"
	else
		echo "tail"
		let "t+=1"
fi
done
echo "head=$h"
echo "tail=$t"
b=`echo - | awk '{print '$t' / '$n'}'`
c=`echo - | awk '{print '$h' / '$n'}'`
percnt_tail=`echo - | awk '{print '$b' * '100'}'`
percnt_head=`echo - | awk '{print '$c' * '100'}'`
echo "percentage of occurance of head : $percnt_head %"
echo "percentage of occurance of tail : $percnt_tail %"
