filename=$(find . -type f  -name "*.java")
for i in $filename
do
	start $i
done