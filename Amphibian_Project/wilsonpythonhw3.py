#!/usr/bin/python3
#Ellen Wilson
#Python3


#3.
import sys
import re
INfile = open(sys.argv[0], 'r') #read
OUTFile = open('outdata.txt', 'w') #write
LineNumber = 0 #establishes a counter
for Line in INfile:
	Line = Line.strip ('\n') #removes line endings
	ElementList = Line.split('\t') #splits lines, tab deliminated
	if re.search(">", ElementList[0]): #searches for the lines with the ">" character
		print("ID Line:", ElementList[0])
	else:
		print("Length of sequence:", len(ElementList[0])) #prints length of sequences
		print("Number of G:", ElementList[0].count("G")) #prints number of Gs
		print("Number of C:", ElementList[0].count("C")) #prints number of Cs
		allowed_basesg = ["G"]
		total_DNAg = 0
		for base in allowed_basesg:
			total_DNAg = total_DNAg + ElementList[0].count(base)
			dna_fractiong = total_DNAg / len(ElementList[0])
			gc_contentg = dna_fractiong * 100 #calculates total g content
	
		allowed_basesc = ["C"]
		total_DNAc = 0
		for base in allowed_basesc:
			total_DNAc = total_DNAc + ElementList[0].count(base)
			dna_fractionc = total_DNAc / len(ElementList[0])
			gc_contentc = dna_fractionc * 100 #calculates total c content
		print("GC Content for this sequence:", gc_contentc + gc_contentg) #combined gc
		
allowed_basesgg = ["G"] #did the same process as above, but outside the loop
total_DNAgg = 0
for base in allowed_basesgg:
	total_DNAgg = total_DNAgg + ElementList[0].count(base)
	dna_fractiongg = total_DNAgg / len(ElementList[0])
	gc_contentgg = dna_fractiongg * 100
	
allowed_basescc = ["C"]
total_DNAcc = 0
for base in allowed_basescc:
	total_DNAcc = total_DNAcc + ElementList[0].count(base)
	dna_fractioncc = total_DNAcc / len(ElementList[0])
	gc_contentcc = dna_fractioncc * 100
	print("GC Content for all sequences:", gc_contentcc + gc_contentgg)	#gave total gc	
	
	LineNumber += 1
INfile.close()
OUTFile.close() #closes loop and system
