# clean backslashes from manuscript

import sys

filenname = sys.argv[1]
print(filenname)
file_text = open(filenname).readlines()
print(len(file_text))

for line in file_text:
	try:
		if line[-2] == "\\" and line[-3] != "\\":
			line.rstrip()
			print(line.rstrip().replace("\\", "  "))
		else:
			print(line.rstrip())
	except:
		print(line.rstrip())