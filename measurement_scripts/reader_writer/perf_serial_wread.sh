ITER=$1
rm ./proj_files/file*
perf record -F 999 -ag -o perf_$ITER.data -- yes | ./writer.sh &> /dev/null
