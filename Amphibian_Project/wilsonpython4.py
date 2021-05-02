#!/usr/bin/python3
#Ellen Wilson
#Python4

import re
import sys
INfile = open(sys.argv[1], 'r') #read
OUTFile = open('outdata.txt', 'w') #write
LineNumber = 0

IN = open(sys.argv[1], 'r')
TotAT = 0
TotATC = 0
TotGA = 0
SSRs = 0
OUTfile = open('SSR_IDs.txt', 'w')
for Line in IN:
	Line = Line.strip('\n')
	Fasta = Line
	Seq = IN.readline()
	Seq = Seq.strip('\n')
	if re.search("(AT){6,}", Seq) or re.search("(ATC){3,}", Seq) or re.search("(GA){5,}", Seq):
		ID = Line
		LineNumber += 1
	OUTfile.write(Seq)
print(Seq)	
INfile.close()
OUTFile.close() #closes loop and system