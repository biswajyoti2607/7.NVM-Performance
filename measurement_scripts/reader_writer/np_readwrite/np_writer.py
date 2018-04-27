#!bin/python
import sys

filename = sys.argv[1]
fp = open(filename, "w+")
fp.write(raw_input() + "\n")
fp.close()
