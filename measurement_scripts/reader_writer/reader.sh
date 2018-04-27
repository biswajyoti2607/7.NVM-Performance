#!/bin/bash

counter=1
while [ $counter -le 1000 ]
do 
	../../pmdk/src/examples/libpmemobj/string_store/reader proj_files/file$counter
	((counter++))
done
