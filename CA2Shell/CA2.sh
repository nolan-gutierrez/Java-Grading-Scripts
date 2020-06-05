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
		echo -e " entering Yes \n\n movie with friends \n\n"

		eval  "echo Y;" |java $name
		echo "\n ----------------------------------\n"
		echo -e "\n\nentering No N Y \n\n shopping \n\n" 
		eval  "echo N; sleep .0001; echo N; sleep .0001; echo Y;" |java $name

		echo "\n ----------------------------------\n"
		echo -e "\n\nentering N Y \n\n bike ride \n\n"
		eval  "echo N; sleep .0001; echo Y;" |java $name

		echo "\n ----------------------------------\n"
		echo -e "\n\nentering N N N \n\n video games \n\n"
		eval  "echo N; sleep .0001; echo N; sleep .0001; echo N;" |java $name

		echo "\n ----------------------------------\n"
		echo -e "\n\n\nentering invalid number\n\n number not valid\n\n"
		eval "echo 1;" |java $name

		echo "\n ----------------------------------\n"
		echo -e " \n\nentering lowercase no and yes \n\n no is not valid \n\n"
		eval "echo no; sleep .0001; echo yes" |java $name

		echo "\n ----------------------------------\n"
		echo -e " \n\n entering lowercasae yes \n\n yes is not  valid\n\n"
		eval "echo yes; sleep .0001;" |java $name
	else
		continue
	fi
done
echo $continue





#vim $name.java 
sleep .1
#rm $name.java
rm $name.class