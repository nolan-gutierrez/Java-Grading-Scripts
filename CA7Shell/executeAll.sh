#Nolan Gutierrez 10010332225 1310 grading script

filename=$(find . -type f  -name "*.java")
#This program takes a shell script as an argument. It will 
# execute the assignment, open the assignment in vim to allow
# to see it, and then ask you to press enter to move onto the next assignment
#In order to use this script, simply place it into a directory 
# with all of the java files that need to be graded. 
# you can call this script by the following 
# sh executeAll.sh CA4.sh
# Each file is opened in vim. When finished viewing the student's document, simply press :q
# In order to have easy to see progress, the program will delete each java 
# file that it  is finished with. It also deletes the class files for easy 
# maintenance. 
for i in $filename
do
	echo -e "Now Grading ";
	echo $i;
	sh $1 $i
	read -p "Press enter to grade next Student's assignment."
done