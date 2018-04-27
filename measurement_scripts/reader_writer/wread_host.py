#!/bin/python

from subprocess import Popen, PIPE, STDOUT, call
import os
import time
import fcntl

def child(filename, i):
	start = time.time()
	p = Popen(["/home/ranjansv/NVM-Performance/pmdk/src/examples/libpmemobj/string_store/writer" , filename], stdin = PIPE, stderr = PIPE)
        stdout_data = p.communicate(input = "file" + str(i) )[0]
        call(["/home/ranjansv/NVM-Performance/pmdk/src/examples/libpmemobj/string_store/reader" , filename])
	run_time = time.time() - start
	with open("wread_ouput_host.txt","a") as f:
		fcntl.flock(f, fcntl.LOCK_EX)
		f.write(str(run_time) + "\n")
		fcntl.flock(f, fcntl.LOCK_UN)
	os._exit(0)

def parent():
	i = 1000
	while(i):
		#start = time.time()
		#filename = "/home/ranjansv/proj_files/file" + str(i)
		filename = "/mnt/mem/file" + str(i)
		newpid = os.fork()
		if newpid == 0:
			child(filename, i)
		i = i -1

parent()


