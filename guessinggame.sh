#bash assignment for Unix workbench class

FileNumber=$(ls -1 | wc -l)
guessing()
{
		
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
echo -n "Reminder: Use 'ls -l to check the number of files"
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