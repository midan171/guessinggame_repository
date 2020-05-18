#Script that asks the user for a guess
#and terminates when the user guesses correctly

#variable for controlling the termination of while loop
flag=false

echo "Hi user!"
echo "Please try to guess the number of the files in this repository:"
read guess

#function for cheching the guess
function check_guess(){
	local num=$(cat guessinggame.sh | wc -l)
	if [ $1 -eq $num ]
	then
		echo "correct!!!"
		flag=true
	elif [ $1 -gt $num ]
	then
		echo "The correct answer is smaller"
		echo "Please try another number: "
		read guess
	else
		echo "The correct answer is bigger"
		echo "Please try another number: "
		read guess
	fi
	}

#while loop breaks only when 'check_guess' function sets flag=true
while [ $flag != true ]
do
	check_guess $guess
done
