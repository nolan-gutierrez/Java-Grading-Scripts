
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
		echo -e "\n\ entering * 1 3, 2 5, 3 7 \n 2 boxes, 3 rows, 4 characters \n\n" 
		eval  "echo *;sleep .001; echo 1; sleep .001; echo 3; sleep .001; echo 2; sleep .001; echo 5; sleep .001; echo 3; sleep .001; echo 7;" |java $name

		echo "\n ----------------------------------\n"



		echo "\n ----------------------------------\n"
		echo -e "\n\ entering & 4 6, middle: 2 1  1 7, end: -1 4\n"
		echo -e " \n 2 boxes, 6 rows, 5 characters \n\n" 
		eval  "echo &;sleep .001; echo 4; sleep .001; echo 6; sleep .001; echo 2; sleep .001; echo 1; sleep .001; echo 1; sleep .001; echo 7; sleep .001; echo -1; sleep .001; echo 4;" |java $name

		echo "\n ----------------------------------\n"






		echo "\n ----------------------------------\n"
		echo -e "\n\ entering @ outer: 0 -1, -8 -5, middle: 3 7 outer:2 9 \n"
		echo -e "\n 3 boxes, 4 rows, 7 characters \n\n" 
		eval  "echo @;sleep .001; echo 0; sleep .001; echo -1; sleep .001; echo -8; sleep .001; echo -5; sleep .001; echo 3; sleep .001; echo 7; sleep .001; echo 2; sleep .001; echo 9;" |java $name

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
