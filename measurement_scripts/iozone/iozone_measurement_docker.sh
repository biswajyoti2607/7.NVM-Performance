for ((n=0;n<10;n++)); do iozone -B -s 16384 -Rab resdir/docker_mmap_16_$n; done; > resdir/docker_output_mmap_16.txt
cd /home/pmdkuser/
for ((n=0;n<10;n++)); do iozone -I -o -s 16384 -Rab resdir/docker_hd_16_$n; done; > resdir/docker_output_hd_16.txt
#Retest with 256MB
for ((n=0;n<10;n++)); do iozone -B -s 256000 -Rab resdir/docker_mmap_256_$n; done; > resdir/docker_output_mmap_256.txt
cd /home/pmdkuser/
for ((n=0;n<10;n++)); do iozone -I -o -s 256000 -Rab resdir/docker_hd_256_$n; done; > resdir/docker_output_hd_256.txt