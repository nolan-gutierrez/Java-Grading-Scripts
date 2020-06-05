$dir = dir *.zip

for i in dir *.zip
do
	unzip $i;
	rm $i;
	
done

