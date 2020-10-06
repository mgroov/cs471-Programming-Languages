     #!/usr/local/bin/perl
#Matthew Groover 
#9-9-20
#this program runs and checks for short circuit eval
$i = 0;


#checking false anc call

print "false and call \n";    
if(($i==1) && (area51()==1)){
    print "true\n";
}
else{
    print"false\n";

}

#checks call then false to help prove
#the short circuit 
print "call then false \n";
if((area51()==1) && ($i == 0)){
    print "true\n";
}
else{
    print"false\n";

}

#sub routines apparently go below the code in perl

#this function is called and returns one to help
#check fot the short curcuit
sub area51{
    print "this function exists!\n";
  return 0;
}
