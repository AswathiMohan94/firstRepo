read -p 'enter the stake : '  stake
read -p 'enter your goal : '  goal
read -p 'Number of times : '  n
win=0
loss=0
for((i=1;i<=n;i++))
do
	if (($stake>0))&&(($goal!=$stake))&&(($n>0))
	then
 		 read -p 'enter the bet amount : ' bet
  		 if (($bet>$stake))
  		 then
		 	echo "bet amount is greater than stack"
    		 continue
  		 fi
  		 r=0.$(( $RANDOM % 10 )) 
		 if (($(awk -v x=$r -v y= 0.5 'BEGIN {print(x>y)}'))) 
  		 then
    			echo "		you won the bet"
    		 	stake=$((stake + bet))
    			win=$((win + 1))
  			else
    				echo "		you lose the bet"
    				stake=$((stake - bet))
    				lose=$((lose + 1))
  		fi
  			echo "stake is : $stake"
	fi

done
echo "		number of wins = $win"
echo "		number of lose = $lose"
a=`echo - | awk '{print '$win' + '$lose'}'` 
win_percent=`echo - | awk '{print '$win' / '$a'}'` 
lose_percent=`echo - | awk '{print '$lose' / '$a'}'`
echo "win percentage is $((win_percent*100))"
echo "lose percentage is $((lose_percent*100))"
