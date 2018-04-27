#/bin/python


import subprocess
import time
import os

total = float(0)
i = 5
myl = []
while(i):
	start = time.time()
	#for filename in os.listdir("/home/ranjansv/proj_files"):
	j = 1000
	while(j):
		#filename = "/home/ranjansv/proj_files/" + filename
		#fn = open(filename, "r+")
		subprocess.call(["sudo", "/home/pmdkuser/pmdk-examples/cpp_queue/cpp_queue", "p", "pool135", "push", "10"])
		subprocess.call(["sudo", "/home/pmdkuser/pmdk-examples/cpp_queue/cpp_queue", "p", "pool135", "pop"])
		#fn = fn.close()
		j = j-1
	end= time.time()
	myl.append(end - start)
	i = i-1
print myl
'''
start = time.time()
#subprocess.call(["cd","/home/ranjansv/proj_files/"], shell=True)
for filename in os.listdir("/home/ranjansv/proj_files"):
	#print filename
	#filename = "/home/ranjansv/proj_files/name1.txt"
	#fn = open(filename, "r+")
	#word = fn.readlines()[0].split()[0]
	subprocess.call(["sudo", "/home/ranjansv/pmdk-examples/cpp_queue/cpp_queue", "p", "/mnt/mem/poollol", "push","10"])	
	#fn.close()
i = 100
while(i):
	subprocess.call(["sudo", "/home/ranjansv/pmdk-examples/cpp_queue/cpp_queue", "p", "/mnt/mem/poollol", "pop"])
	i = i-1
#subproicess.call("cd", "pmdk-examples/cpp_queue/")
#subprocess.call("./cpp_queue", "v", "/mnt/mem/pool_file10","push"
'''
