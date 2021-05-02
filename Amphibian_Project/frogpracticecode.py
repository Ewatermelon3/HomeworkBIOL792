#!/usr/bin/python3
#Ellen Wilson
#Python

import re
import sys

IN = open(sys.argv[1], 'r')
SSRs = 0
LineNumber = 0
OUT = open('ssr.txt', 'w')
for Line in IN:
	Line = Line.strip('\n')
	ID = Line
	Fasta = Line
	Seq = IN.readline()
	Seq = Seq.strip('\n')
	if re.search(">", Line):
		print("ID Line", LineNumber, ":", Line) #prints ID Lines
		LineNumber += 1
	if re.search(">", Seq): #had to create two separate loops
		ID = Line
	elif re.search("[AT]{6,}", Seq) or re.search("[ATC]{6,}", Seq) or re.search("[GA]{5,}", Seq):
		#did an OR statement to get all possible outcomes	
		at1 = re.findall("[AT]{6,}", Seq) #individually printed findalls
		atc1 = re.findall("[ATC]{6,}", Seq) #could also print full nucleotides
		ga1 = re.findall("[GA]{5,}", Seq)
		LineNumber += 1 #must include this in both loops
		print("AT Count:", len(at1))
		print("ATC Count:", len(atc1))
		print("GA Count:", len(ga1))
		SSRs += (len(at1) + len(atc1) + len(ga1))
	OUT.write("SSRs: %s, %s \n" %(ID, Seq)) #seemed like this worked!
	
print("Total SSRS for entire file:", SSRs) #total SSRs


	
IN.close()
OUT.close() #closes loop and system