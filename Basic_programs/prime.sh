echo "enter the number : "
read n
echo "the prime factors of $n are "
flag=0
count=0
for (( i=2;i<=n;i++ ))
do
	if (( n % $i == 0 ))
        then
		factor=$i
		for (( j=2;j<=factor/2;j++ ))
		do
			flag=0
			if (( $factor % $i == 0 ))
			then
				flag=1
				break
			fi
			j=$j+1
		done
		if (( $flag == 0 ))
		then
			echo "$factor"
			count=1
		fi
	fi      		
done
if (( $count == 0 ))
then
	echo "no prime factors"
fi




