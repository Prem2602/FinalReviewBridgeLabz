#Programe for a game of gamble


WIN=1
LOSS=0
Win_count=0
Loss_count=0
No_of_bets=0
money=20

while((1))
do
	if(( money==0 ))
	then
		break;
	elif(( money==50 ))
	then
		break;
	fi

	gamble=$((RANDOM%2))

	if(( gamble==WIN ))
	then
		money=$(($money+1))
		Win_count=$(($Win_count+1))
		No_of_bets=$(($No_of_bets+1))
	elif((gamble==LOSS))
	then
		money=$(($money-1))
		Loss_count=$(($Loss_count+1))
		No_of_bets=$(($No_of_bets+1))
	fi
done

echo " No. of times Gamble " $No_of_bets
echo " No. of times Won " $Win_count
echo " No. of times Lost " $Loss_count

if(( money==50 ))
then
	echo " Final Amount " $money;
	echo " YOU WON! "
elif(( money==0 ))
then
	echo " Final Amount " $money;
	echo " YOU LOST! "
fi
