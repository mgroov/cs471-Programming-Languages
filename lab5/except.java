//Matthew Groover
//8/6/2020
//This program defines change for an array
//in exception handling in order to show how
//java handles exceptions
import java.util.*;

class except{

    public static void main(String args[]){

	
	new except();



    }//of main 


    except(){

	Scanner scnr = new Scanner(System.in);
	int a[] = new int[12];//increased the size of the array to handle starting at 1
	int newgrade=0;
	int index=0;

	try{

	    a[15] =10;

	}//of try 
	catch(Exception e){

	     newgrade = scnr.nextInt();

        while(newgrade >=0){
	    if(newgrade > 100){
		System.out.println(" greater than 100 invalid input please input a new val");
		newgrade = scnr.nextInt();
	    }
	    else{
            index = newgrade/10+1;
            a[index]= a[index]+1;
            newgrade = scnr.nextInt();
	    }//of else 
        }//of while

        System.out.println("limits... frequency \n\n");

        int limit1,limit2;

        for(int i=0;i<9;i++){
            limit1 = 10 * i;
            limit2 = limit1 +9;
            if(index == 9){
                limit2 = 100;
            }//if limit is 100
            System.out.println(limit1 + "   " +limit2 + "   " + a[i + 1]);


	}//of print for

	}//of catch 
    }//of new except 
	

}//of except 
