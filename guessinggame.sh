#bash assignment for Unix workbench class

guessing()
{
		
		if [ $guess -lt `ls -1 | wc -l` ];
		then
		echo "Number is too low"
		fi;

		if [ $guess -gt `ls -1 | wc -l` ];
		then
		echo "Number is too high"
		fi;
}


count=1
while [ $count -ne '0' ]
do
echo -n "This simple program checks how many files are in the current directory"
echo ""
echo -n "Please enter your guess number:"
read guess 
if [ $guess -eq `ls -1 | wc -l` ];
		then
		echo "Congrats! It is correct"
		break;
		fi;

guessing $guess
let count=count+1
done
