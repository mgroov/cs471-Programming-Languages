//Matthew Groover
//10/21/20
//The point of this program is to examine what type of binding is implemented in javascript
//This program tests this by passing a subprogram to another
//we can then see based on the ourput the binding implemented by the language 

function sub1() {
  var x;
  function sub2() {
      // alert(x); Creates a dialog box with the value of x
      //i used console.log instead in order to be able to run and view output in the terminal
      console.log(x)//prints the value of x 
    };
  function  sub3() {
    var  x;
    x = 3;
    sub4(sub2);
    };
  function  sub4(subx) {
    var  x;
    x = 4;
    subx();
    };
  x = 1;
    sub3();
  };

console.log("start");
sub1();//calls the function to start the test. 

