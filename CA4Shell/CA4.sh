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
		echo -e "\n\ entering 1 \n\n" 
		eval  "echo 1;" |java $name

		echo "\n ----------------------------------\n"




		echo "\n ----------------------------------\n"
		echo -e "\n\ entering 2, should say answer to question 2 is \n\n" 
		eval  "echo 2;" |java $name

		echo "\n ----------------------------------\n"

		echo "\n ----------------------------------\n"
		echo -e "\n\ entering 3 , should say answer to question 3 is \n\n" 
		eval  "echo 3;" |java $name

		echo "\n ----------------------------------\n"




		echo "\n ----------------------------------\n"
		echo -e "\n\ entering 4, should say answer to question 4 is \n\n" 
		eval  "echo 4;" |java $name

		echo "\n ----------------------------------\n"



		echo "\n ----------------------------------\n"
		echo -e "\n\ entering 5, should say answer to question 5 is \n\n" 
		eval  "echo 5;" |java $name

		echo "\n ----------------------------------\n"




		echo "\n ----------------------------------\n"
		echo -e "\n\ entering 6, 0, -1, 1 end should be answer to question 1 is\n\n" 
		eval  "echo -e '6\n'; sleep .01; echo -e '0\n';sleep .01 ;echo -e '-1\n'; sleep .01; echo -e '1';" |java $name

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

