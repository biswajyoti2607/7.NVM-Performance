#/bin/python

fp = open("kkr.txt", "r+")

i = 0
for each in fp.readlines():
	for word in each.split():
		fname = "name" + str(i) + ".txt"
		f1 = open(fname, "w+")
		f1.write(word)
		f1.close()
		i = i+1
