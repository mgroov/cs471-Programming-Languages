#Matthew Groover#
#11/02/20
#this program removes special charachteers
#from a file then adds it back to a new file
import re

f = open('control-char.txt','r')
f2 = open('new_file.txt','w')

for line in f:
    line = re.sub('[^A-Za-z0-9]+', '', line)
    f2.write(line)

