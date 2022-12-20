
read -p "Enter the number: " num
value=257
while [ $num ]
do
	for (( n=1;n<=num;n++ ))
	do
        	table=$((2*$n))
		if [ $table -lt $value ]
		then
        		echo $table
		fi
	done
break
done

















#read -p "Enter the number: " num

#for ((n=1;n<=num;n++))
#do
        #table=$((2*$n))
        #echo $table
#done
