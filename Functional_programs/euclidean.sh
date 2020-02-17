echo $1 $2
f=$1 
e=$2
a=$((f * f))
b=$((e * e))
let "c=a+b"
echo "the square root is : "
echo "scale=2;sqrt($c)" | bc -l


