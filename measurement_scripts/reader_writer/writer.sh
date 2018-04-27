#!/bin/bash

rm proj_files/file*
counter=1
while [ $counter -le 1000 ]
do 
	../../pmdk/src/examples/libpmemobj/string_store/writer proj_files/file$counter
	((counter++))
done
