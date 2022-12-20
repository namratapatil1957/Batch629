
a=60
b=40

feet=$(( a * b ))
plot=$( echo $feet | awk '{ print $feet*0.3048 }' )
echo "plot in feet: " $feet
echo "plot in meter : " $plot
