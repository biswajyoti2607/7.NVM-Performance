cd ../../pmdk-examples/simple_grep/grep
for ((n=0;n<10;n++)); do ./grep int grep.cpp; done > simple_grep_result_host.txt
cd ../pmemgrep
./pmemgrep /mnt/mem/pooln int pmemgrep.cpp > pmemgrep_first_run_result.txt
for ((n=0;n<10;n++)); do ./pmemgrep /mnt/mem/pooln int pmemgrep.cpp;  done > pmemgrep_subsequent_run_result_host.txt
for ((n=0;n<10;n++)); do free && sync && echo 3 > /proc/sys/vm/drop_caches && free && ./pmemgrep /mnt/mem/pooln int pmemgrep.cpp; done > pmemgrep_cache_flush_result_host.txt
cd ../grep
for ((n=0;n<10;n++)); do free && sync && echo 3 > /proc/sys/vm/drop_caches && free && ./grep int grep.cpp; done > simple_grep_cache_flush_result_host.txt
#Repeat with multiple files
cd ../../pmdk-examples/simple_grep/grep
for ((n=0;n<10;n++)); do ./grep when ../../../measurement_scripts/grep/test/; done > simple_grep_test_result_host.txt
cd ../pmemgrep
./pmemgrep /mnt/mem/poolntest when ../../../measurement_scripts/grep/test/ > pmemgrep_first_run_test_result_host.txt
for ((n=0;n<10;n++)); do ./pmemgrep /mnt/mem/poolntest when ../../../measurement_scripts/grep/test/;  done > pmemgrep_subsequent_run_test_result_host.txt
for ((n=0;n<10;n++)); do free && sync && echo 3 > /proc/sys/vm/drop_caches && free && ./pmemgrep /mnt/mem/poolntest when ../../../measurement_scripts/grep/test/; done > pmemgrep_cache_flush_test_result_host.txt
cd ../grep
for ((n=0;n<10;n++)); do free && sync && echo 3 > /proc/sys/vm/drop_caches && free && ./grep when ../../../measurement_scripts/grep/test/; done > simple_grep_cache_flush_test_result_host.txt