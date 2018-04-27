for ((n=0;n<10;n++)); do iozone -B -s 16384 -Rab resdir/mmap_16_$n; done; > resdir/output_mmap_16.txt
cd /home/ranjansv/
for ((n=0;n<10;n++)); do iozone -I -o -s 16384 -Rab resdir/hd_16_$n; done; > resdir/output_hd_16.txt
cd /mnt/mem
for ((n=0;n<10;n++)); do iozone -I -o -s 16384 -Rab resdir/nvm_16_$n; done; > resdir/output_nvm_16.txt
#Retest with 256MB
for ((n=0;n<10;n++)); do iozone -B -s 16384 -Rab resdir/mmap_256_$n; done; > resdir/output_mmap_256.txt
cd /home/ranjansv/
for ((n=0;n<10;n++)); do iozone -I -o -s 16384 -Rab resdir/hd_256_$n; done; > resdir/output_hd_256.txt
cd /mnt/mem
for ((n=0;n<10;n++)); do iozone -I -o -s 16384 -Rab resdir/nvm_256_$n; done; > resdir/output_nvm_256.txt