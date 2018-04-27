#!/bin/python

from subprocess import Popen, PIPE, STDOUT, call
import os
import time
import fcntl

i = 1000
run_time = time.time()
while(i):
	filename = "/home/pmdkuser/NVM-Performance/measurement_scripts/reader_writer/proj_files/file" + str(i)
	p = Popen(["/home/pmdkuser/pmdk/src/examples/libpmemobj/string_store/writer", filename], stdin = PIPE, stderr = PIPE)
	stdout_data = p.communicate(input = "file" + str(i))[0]
	call(["/home/pmdkuser/pmdk/src/examples/libpmemobj/string_store/reader", filename])
	i = i-1
print time.time() - run_time


