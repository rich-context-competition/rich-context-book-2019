# rename files in a directory 

import sys
import os
import glob 
from pathlib import Path 

directory = sys.argv[1]
file_ext = sys.argv[2]
prefix = sys.argv[3]

print(directory, file_ext, prefix)

files = glob.glob("./"+directory+"/*."+file_ext)

print(files)
for file in files:
	p = Path(file)
	p.rename(Path(p.parent, prefix + "_" + p.stem + p.suffix))
