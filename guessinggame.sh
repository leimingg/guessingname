#bash assignment for Unix workbench class

#FileNumber=$(ls -1 | wc -l)
FileNumber=$(ls -a -1 | wc -l)
guessing()
{
		re='^[0-9]+$'
		if ! [[ $guess =~ $re ]];
		then
		echo "Invalid input. Please enter a valid number."
		return;
		fi;
		
		if [[ $guess -lt $FileNumber ]];
		then
		echo "Number is too low"
		fi;

		if [[ $guess -gt $FileNumber ]];
		then
		echo "Number is too high"
		fi;
}

count=1
echo -n "Reminder: the program was designed to count both visible and hidden files."
echo ""
while [ $count -ne '0' ]
do
echo -n "#"$count
echo -n "This simple program checks how many files are in the current directory"
echo ""
echo -n "Please enter your guess number:"
read guess 
if [[ $guess -eq $FileNumber ]];
		then
		echo "Congrats! It is correct"
		break;
		fi;

guessing $guess
let count=count+1
done