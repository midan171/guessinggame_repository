#This is a Makefile that creates the read me file

README.MD: guessinggame.sh
	echo "title: guessinggame.sh" > README.MD
	echo "makefile execute time: `date` " >> README.MD
	echo "num of lines in script: " >> README.MD
	cat guessinggame.sh | wc -l >>README.MD
