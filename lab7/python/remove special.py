#Matthew Groover#
#11/02/20
#this program removes char betweem defined chars
#from a file then adds it back to a new file


f = open('control-char.txt','r')
f2 = open('new_file.txt','w')  #opens control and new for writing
flag =1
for line in f:
    for x in line: # the two for loops seperate out each char
        if(ord(x) ==3): #if the ascii val of char = control c close flag
            flag =0
        if(flag): #if the flag is open print 
            f2.write(x)
        if(ord(x)==2):#if the ascii val of char = control b open flag
            flag =1
    

