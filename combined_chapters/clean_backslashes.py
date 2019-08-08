# clean backslashes from manuscript

import sys
import glob
from tempfile import mkstemp
from shutil import move
from os import fdopen, remove

filepat = sys.argv[1]
files = glob.glob("./"+filepat)

# def replace_backslashes(file_text):
# 	for line in file_text:
#  		try:
#  			if line[-2] == "\\" and line[-3] != "\\":
#  				line.rstrip()# 			print(line.rstrip().replace("\\", "  "))
#  			else:
#  				print(line.rstrip())
#  		except:
#  			print(line.rstrip())

def replace(file_path):
    #Create temp file
    fh, abs_path = mkstemp()
    with fdopen(fh,'w') as new_file:
        with open(file_path) as old_file:
            for line in old_file:
				try:
 					if line[-2] == "\\" and line[-3] != "\\":
 						line.rstrip()
 						new_file.write(line.rstrip().replace("\\", "  "))
 					else:
 						new_file.write(line.rstrip())
 				except:
		 			new_file.write(line.rstrip())
    #Remove original file
    remove(file_path)
    #Move new file
    move(abs_path, file_path)

for file in files:
	replace(file)