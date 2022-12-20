
read -p " Enter first number: " n
read -p " Enter the second number: " n2

function palin()
{
tem=$n
temp=$n2
rev=" "
revs=" "
s=0
a=0
while [ $n -gt 0 ]                                        #first number
do
	s=$(($n%10))
	n=$(($n/10))
	rev=$(echo ${rev}${s})
done

if [ $tem -eq $rev ]
then
        echo "palindrome"
else
        echo "not palindrome"
fi


while [ $n2 -gt 0 ]                                        #second number
do
        a=$(($n2%10))
        n2=$(($n2/10))
        revs=$(echo ${revs}${a})
done

if [ $temp -eq $revs ]
then
        echo "palindrome"
else
        echo "not palindrome"
fi
}
palin

