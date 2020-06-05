# This program takes in an input java filename to execute.
# To use this program place a single java file in the same 
# folder as this script. Then everywhere after the echo add
# your user input. Each time java is called, the program is
#executed an additional time. With the eval as input.
#This script only works on a  single file and it removes any
#lines that contain the word package. 
reset
#filename=$(find . -type f  -name "*.java")
echo $1
name=$(echo "$1" | cut -f 2 -d '.')
name=$(echo "$name" | cut -f 2 -d '/')

echo -e "Now Grading:"
echo $name;

sed '/package/d;' -i $name.java
cont=1
while [ "$cont" == '1' ] || [ "$cont" == '2' ]
do
	echo -e "\n Choose an option\n"
	echo -e "1. Run Test Cases\n"
	echo -e "2. Execute Manually\n"
	echo -e "3. Next Student\n"

	read -e cont;
	javac $name.java

	if [[ "$cont" == '2' ]]; then
		java $name
	
	elif [[ "$cont" == '1' ]]; then 
		echo "\n ----------------------------------\n"
		echo -e "\n\ No movie for you should be end \n\n" 

		eval  "echo -1;sleep .5; echo 0; sleep .1; echo 10; sleep .1; echo 5; sleep .1; echo 5; sleep .1; echo -1; sleep .1; echo 0; sleep .1; echo 5; sleep .1; echo 3; sleep 0.1; echo -1; sleep .1; echo '5'; sleep .1; echo '0';"| tee /dev/tty  |java $name
		echo "\n ----------------------------------\n"
		echo -e "\n\ No movie for you should be end \n\n" 
		eval  "echo '5';sleep .1; echo '5'; sleep .1; echo '3'; sleep .1; echo '0'; "| tee /dev/tty  |java $name

		echo "\n ----------------------------------\n"
		echo -e "\n\ should have A1, A2, A3 \n\n"
		eval  "echo 5;sleep .1; echo 5;sleep .11; echo '3';sleep .1; echo 3;sleep .1; echo 'A1';sleep .1; echo 'A9';sleep .1; echo 'H1';sleep .1; echo 'A1';sleep .1; echo 'G4'; sleep .1; echo 'A2';sleep .1; echo 'A3'; sleep .1; echo 'output.txt'"| tee /dev/tty  |java $name
		echo "\n ----------------------------------\n"
		
		echo "\n ----------------------------------\n"
		echo -e "\n\ should have A1, A2, A3 \n\n"
		eval  "echo 5;sleep .1; echo 5;sleep .11; echo '3';sleep .1; echo 3;sleep .1; echo 'A1';sleep .1; echo 'A1';sleep .1; echo 'A2';sleep .1; echo 'A3'; sleep .1; echo 'output.txt'"| tee /dev/tty  |java $name
		echo "\n ----------------------------------\n"
		
		echo "\n ----------------------------------\n"
		echo -e "\n\ should have A1, A2, A3 \n\n"
		eval  "echo 5;sleep .1; echo 5;sleep .1; echo 3;sleep .1; echo 3;sleep .1; echo 'A1';sleep .1; echo 'A2';sleep .1; echo 'A3'; sleep .1; echo 'output.txt'"| tee /dev/tty  |java $name
		echo "\n ----------------------------------\n"
		
	else
		continue
	fi
done
echo $continue





#vim $name.java 
sleep .1
#rm $name.java
rm $name.class
