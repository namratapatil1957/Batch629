
dice1=$((RANDOM%6+1))
echo "First Random Value : "$dice1
dice2=$((RANDOM%6+1))
echo "Second Random Value : "$dice2

add=$(($dice1+$dice2))
echo "Addintion is : " $add
