PMEM_IS_PMEM_FORCE=1 
sudo rm -rf /mnt/mem/pmemkv_db
sudo ../../pmemkv/bin/pmemkv_bench --db=/mnt/mem/pmemkv_db --benchmarks=fillseq > fillseq_host.txt
sudo ../../pmemkv/bin/pmemkv_bench --db=/mnt/mem/pmemkv_db --benchmarks=readseq > readseq_host.txt
sudo ../../pmemkv/bin/pmemkv_bench --db=/mnt/mem/pmemkv_db --benchmarks=deleteseq > deleteseq_host.txt
sudo rm -rf /mnt/mem/pmemkv_db
sudo ../../pmemkv/bin/pmemkv_bench --db=/mnt/mem/pmemkv_db --benchmarks=fillrandom > fillrandom_host.txt
sudo ../../pmemkv/bin/pmemkv_bench --db=/mnt/mem/pmemkv_db --benchmarks=readrandom > readrandom_host.txt
sudo ../../pmemkv/bin/pmemkv_bench --db=/mnt/mem/pmemkv_db --benchmarks=deleterandom > deleterandom_host.txt
sudo rm -rf /mnt/mem/pmemkv_db