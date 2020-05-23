#bash assignment for Unix workbench class

count=$(ls -1|wc -1)

function right_guess{
	if[[$1 -lt $2]]
	then 
		echo "Your number is too low"
	elif[[$1 -gt $2]]
	then 
		echo"Your number is too high"
	else
		echo""
		echo"Congrats! Your number is right!"

while [[$count -ne $guess]]
do
	read -"Guess number game" guess
	#echo "you entered:$guess"
	echo $(correct_guess $guess $count)
	echo ""
done
}
