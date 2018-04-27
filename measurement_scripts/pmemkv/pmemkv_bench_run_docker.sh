PMEM_IS_PMEM_FORCE=1 
sudo rm -rf /mnt/mem/pmemkv_db
sudo ../../pmemkv/bin/pmemkv_bench --db=/mnt/mem/pmemkv_db --benchmarks=fillseq > fillseq_docker.txt
sudo ../../pmemkv/bin/pmemkv_bench --db=/mnt/mem/pmemkv_db --benchmarks=readseq > readseq_docker.txt
sudo ../../pmemkv/bin/pmemkv_bench --db=/mnt/mem/pmemkv_db --benchmarks=deleteseq > deleteseq_docker.txt
sudo rm -rf /mnt/mem/pmemkv_db
sudo ../../pmemkv/bin/pmemkv_bench --db=/mnt/mem/pmemkv_db --benchmarks=fillrandom > fillrandom_docker.txt
sudo ../../pmemkv/bin/pmemkv_bench --db=/mnt/mem/pmemkv_db --benchmarks=readrandom > readrandom_docker.txt
sudo ../../pmemkv/bin/pmemkv_bench --db=/mnt/mem/pmemkv_db --benchmarks=deleterandom > deleterandom_docker.txt
sudo rm -rf /mnt/mem/pmemkv_db