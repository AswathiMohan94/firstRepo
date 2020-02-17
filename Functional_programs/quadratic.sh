echo "enter value of a,b,c "
read $a
read $b
read $c
echo "a = $a"
echo "b = $b"
echo "c = $c"
x=`echo - | awk '{print '2' * '$a'}'`
d=`echo - | awk '{print '$b' ^ '2'}'`
e=`echo - | awk '{print '4' * '$a' * '$c'}'`
f=`echo - | awk '{print '$d' - '$e'}'`
delta = echo "scale=2;sqrt($f)" | bc -l
g=`echo - | awk '{print '-$b' + '$delta'}'`
h=`echo - | awk '{print '-$b' - '$delta'}'`
root1=`echo - | awk '{print '$g' / '$x'}'`
root2=`echo - | awk '{print '$h' / '$x'}'`
echo "root 1 = $root1"
echo "root 2 = $root2"
