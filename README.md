# NVM-Performance

### Scripts for setting up Ext4 DAX and Docker
- Install ext4 filesystem with DAX
```
setup_scripts/mount_ext4_dax.sh
```
- Setup the host or docker with required files and dependencies
```
setup_scripts/system_setup.sh
```
- System restart causes the ext4 dax on RAM to lose the docker files, the script restores them
```
setup_scripts/docker_start_after_restart.sh
```
- Move docker installation from hard disk to NVM
```
setup_scripts/docker_move_hd_to_nvm.sh
```
- Move docker installation from NVM to hard disk
```
setup_scripts/docker_move_nvm_to_hd.sh
```

### Modifications to pmdk-examples
Changes were made to the following files to collection performance measurements
- `pmdk-examples/simple_grep/grep/grep.cpp`
- `pmdk-examples/simple_grep/pmemgrep/pmemgrep.cpp`

### Scripts for collecting measurements
- Disk read-write throughput - `measurement_scripts/iozone`
- grep performance - `measurement_scripts/grep`
- Queue performance - `measurement_scripts/queue`
- Snappy Compression performance on multiple files - `measurement_scripts/compression`
- Reader/Writer performance using pmem libary - `measurement_scripts/reader_writer`
- Key Value store throughput - `measurement_scripts/pmemkv`

NOTE: Scripts ending with '_host' indicates script to be run on the host, those ending with '_docker' should be run on the docker container. Those which don't have any suffix can be run on both.