#This is a Makefile that creates the read me file

README.MD: guessinggame.sh
	echo "\n title: guessinggame.sh" > README.MD
	echo "\n makefile execute time: `date` " >> README.MD
	echo "\n num of lines in script: " >> README.MD
	cat guessinggame.sh | wc -l >>README.MD
