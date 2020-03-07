echo "enter the year : "
read year
if(($year%4==0))
then
	echo "the year $year is leap year"
elif(($year%400==0))&&(($year%100!=0))
then
	echo "the year $year is leap year"
else
	echo "the year $year is not leap year"
fi

