t=$1
v=$2
echo "t=$1"
echo "v=$2"
a=`echo - | awk '{print '$t' * '0.4275'}'`
b=`echo - | awk '{print '$v' ^ '0.16'}'`
c=`echo - | awk '{print '$a' - '35.75'}'`
d=`echo - | awk '{print '$c' * '$b'}'`
f=`echo - | awk '{print '$t' * '0.6215'}'`
e=`echo - | awk '{print '$d' + '35.74'}'`
g=`echo - | awk '{print '$f' + '$e'}'`
echo "$g "
