all: README.md
	
README.md: guessinggame.sh
	touch README.md
	echo "***Title: The last assignment in the course***" > README.md
	echo "\n***Date and time at which \"make\" was run:*** " >> README.md
	date >> README.md
	echo "\n***Numbers of lines in guessinggame.sh:*** " >> README.md
	cat guessinggame.sh | wc -l >> README.md

	exit 0
