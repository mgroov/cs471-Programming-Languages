

//Matthew Groover
//11/02/20
//The purpose of this is program is to remove 
//special characters from a text file 

import java.util.*;
import java.io.BufferedReader;  // the libraries necessary 
import java.io.BufferedWriter;  // for file management 
import java.io.File;
import java.io.FileReader;
import java.io.FileWriter;

public class removespecial {
	
	public static void main(String args[]) {
		new removespecial("control-char.txt");
	}//of main
	
	
	//takes in the name of the target file returns to new file 
	//file removed of special chars
	removespecial(String filename){
		try {
			FileReader fr = new FileReader(filename);
			BufferedReader br = new BufferedReader(fr); // the reader of the file
			
			BufferedWriter bw = null;
			File file = new File("./new_file.txt");  // the writer of the new file
			
			if(!file.exists()) {
				
				file.createNewFile();  //checks to make sure that the target file
									   //exists
			}//of if

			FileWriter fw = new FileWriter(file);
			bw = new BufferedWriter(fw);
			
			int temp;
			String temp2 =" ";
			boolean flag = true;

			System.out.println("starting to write");
			while((temp = br.read()) != -1) {

				if(temp == 3){
					flag = false;
				    }//if control c
				if(flag){                //goes through char by char
				    bw.write(temp);	 //updates the flag if need be 
				} //of flag check        // then writes or doesnt based on the flag
				if(temp ==2){
				    flag = true;

				}//of if control b
			}//of while char != EOF
			
			System.out.println("...write complete");
			bw.close();
			
		}//of try to read the file
		catch(Exception e) {
			System.out.println("Error in reading or writing to file");
		}//of if file is not read or able to be written to exception is thrown
	}//of remove special call
	
}//of remove special class
