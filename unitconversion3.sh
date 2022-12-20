
a=60
b=40

feet=$(( a * b ))
Acres=$( echo $feet | awk '{ print ( $feet*25)/43560 }' )
echo "25 plot in acres: "$Acres
