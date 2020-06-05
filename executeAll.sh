filename=$(find . -type f  -name "*.java")
#This program takes a shell script as an argument. 
# It will execute each assignment using the provided shell and 
# then ask if you would like to move onto the next assignment.
for i in $filename
do
	echo -e "Now Grading ";
	echo $i;
	sh $1 $i
	read -p "Press enter to grade next Student's assignment."
done