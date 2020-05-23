all: README.md

README.md:
	echo "guessinggame.sh for Unix Workbench class\n">>README.md
	echo -n "Successfully created README.md">>README.md
	date>>README.md
	echo -n "\nNumber of lines in guessinggame.sh:">>README.md
	wc -l guessinggame.sh |egrep -o "[0-9]+" >> README.md
