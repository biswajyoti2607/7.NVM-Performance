#!bin/python
import sys

filename = sys.argv[1]
fp = open(filename,"r+")
print fp.read()
fp.close()
