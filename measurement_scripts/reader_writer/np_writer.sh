#!/bin/bash

touch proj_files/np_file1
rm proj_files/np_file*
counter=1
while [ $counter -le 1000 ]
do 
	echo yes > proj_files/np_file$counter
	((counter++))
done
