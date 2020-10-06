
<?php
//Matthew Groover
//9/9/20
// this program tests the php language for short cicruit evaluation

$t = 0;


// this function echos and returns 1 if reached
function testcall(){
  echo " Function reached \n";
  return 0;
}


//testing false and call
echo "false and call \n";

if ($t==1 && testcall()==1) {
  echo "Have a good day!";
  }
  else{
  echo "false \n";
  }

//testing call then false
echo "call then false \n";

if ( testcall()==1 && $t==1) {
  echo "Have a good day!";
  }
  else{
  echo "false";
  }

?>
 
