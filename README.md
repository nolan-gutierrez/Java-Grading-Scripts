## Preliminaries
This project was used to grade single-file java assignments in bulk
For copyright concerns I decided not to include the rubrics for each of the assignments. 

## How to use:

Each of these files are can be used to streamline the grading process. In 
order to use these scripts it is recommended to have git bash installed. 
Move to the directory containing all of the student's zip files. Right click 
in the file explorer and select git bash here. Then execute the following 
command:

```
sh extractAll.sh
```
All of the Java files should be separated from their folders now. Manually put
the rest of the Java files into the same directory. I then recommend having 
notepad ++ as your default editor because it has macro commands which you can 
make use of. Next move all of your directories to the appropiate folder 
for the coding assignment you are grading. If you have a default editor 
chosen for you java files, now execute the following in your bash shell:

```
sh openAll.sh
```

This will open all of the java files. 
You can now use executeAll to bring up a  menu of all the java files. For 
example if you want to execute all of the java files for the third coding
assignment:
```
sh executeAll.sh CA3.sh
```

This will bring up a menu of each coding assignment. 

Also each coding assignment should be able to be executed using:
sh CA3.sh Code 
You should not add the java extension when executing java files individually.
