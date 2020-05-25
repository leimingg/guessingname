#bash assignment for Unix workbench class

guessing()
{
		
		if [ $guess -lt `ls -a |wc -l` ];
		then
		echo "Number is too low"
		fi;

		if [ $guess -gt `ls -a | wc -l` ];
		then
		echo "Number is too high"
		fi;
}


count=1
while [ $count -ne '0' ]
do
echo -n "#"$count
echo -n "This simple program checks how many files are in the current directory"
echo ""
echo -n "Please enter your guess number:"
read guess 
if [ $guess -eq `ls -a | wc -l` ];
		then
		echo "Congrats! It is correct"
		break;
		fi;

guessing $guess
let count=count+1
done