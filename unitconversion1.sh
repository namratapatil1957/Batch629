
ft=12

feets=$( echo $ft | awk '{print 42/$ft}' )
echo $feets
