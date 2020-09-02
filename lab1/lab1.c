#include <stdio.h> 
#include <stdlib.h>

//lab1 
//9-1-2020
//Matthew Groover 

#define BYTE0 1
#define BYTE1 256 // a single byte 
#define BYTE2 65536 // the second largest 
#define BYTE3 16777216 // the largest

//pre condition: the system ran on is intel based 
//post condition: the print statments formatted to name and showing memory locations 
//input none
//output none

 int a[100]; 
int main(){


char *S;

a[0]= 'M'*BYTE0 + 'a'*BYTE1 + 't'*BYTE2 + 't'*BYTE3;

a[1]= 'h'*BYTE0 + 'e'*BYTE1 + 'w'*BYTE2 + ' '*BYTE3;

a[2]= 'G'*BYTE0 + 'r'*BYTE1 + 'o'*BYTE2 + 'o'*BYTE3;

a[3]= 'v'*BYTE0 + 'e'*BYTE1 + 'r'*BYTE2 + 0;

 
S=(char *)a;

printf("My name is %s\n",S);

//=========================================================================================================|
//3
//---------------------------------------------------------------------------------------------------------|
//a)   in what memory segment is the array allocated?  Give proof that your answer is correct
printf("main is located at %20u_\n",main);
printf("Array is located at %20u_\n",a);
//stack we prove it by showing that it is not in the same location as main
//---------------------------------------------------------------------------------------------------------|
// b)  in what memory segment is the pointer to the array allocated? Give proof that your answer is correct
printf("S is located at %20u_\n",&S);
//stack we prove it by showing that it is in a simmilair location to our array
//---------------------------------------------------------------------------------------------------------|
//c)how can you make your array be in  another segment?  Show how you did this and show proof
// by making a an global array we also show it by the diffrence in location in each of the screenshots
//---------------------------------------------------------------------------------------------------------|
//d) I looked up intel and it was based on x86 therefore it was little endian
//---------------------------------------------------------------------------------------------------------|
//e) Why is there a difference between little and big endian?   Which one is better?  Provide a source
// There is a diffrence in the way that the data is read.
// They are better in specific situations for exammple big endian is better in situations where the 
// size must be the same and whether or not the value is positive is important such as internet protocols.
// Little endian is better for readability by diffrent bite sizes. 
//https://uynguyen.github.io/2018/04/30/Big-Endian-vs-Little-Endian/
//---------------------------------------------------------------------------------------------------------|
//4)
//My default came out where the last byte happened to be zero and making the last byte 0
//was sufficient for printing my name and ending the string  
//=========================================================================================================|
}
