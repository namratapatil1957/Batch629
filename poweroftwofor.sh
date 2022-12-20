
read -p "Enter the number: " num

for ((n=1;n<=num;n++))
do
	table=$((2*$n))
	echo $table
done
