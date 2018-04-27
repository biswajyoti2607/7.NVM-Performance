#!/bin/python

from subprocess import Popen, PIPE, STDOUT, call
import os
import time
import fcntl

def child(filename, i):
	start = time.time()
	p = Popen(["python", "/home/pmdkuser/NVM-Performance/measurement_scripts/reader_writer/np_readwrite/np_writer.py" , filename], stdin = PIPE, stderr = PIPE)
        stdout_data = p.communicate(input = "file" + str(i) )[0]
        call(["cat" , filename])
	run_time = time.time() - start
	with open("wread_nopmem_ouput_docker.txt","a") as f:
		fcntl.flock(f, fcntl.LOCK_EX)
		f.write(str(run_time) + "\n")
		fcntl.flock(f, fcntl.LOCK_UN)
	os._exit(0)

def parent():
	i = 1000
	while(i):
		#start = time.time()
		filename = "/home/pmdkuser/NVM-Performance/measurement_scripts/reader_writer/proj_files/np_file" + str(i)
		#filename = "/mnt/mem/file" + str(i)
		newpid = os.fork()
		if newpid == 0:
			child(filename, i)
		i = i -1

parent()


