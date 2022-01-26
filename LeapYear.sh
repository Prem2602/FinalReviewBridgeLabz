
#Program to check whether it is a leap year or not

read -p " Enter a Year " year;

if (( $year%4==0 && $year%100!=0 ))
then
	echo $year " is a Leap Year"
elif (( $year%400==0 ))
then
	echo $year " is a Leap Year"
else
	echo $year " is not a Leap Year"
fi
