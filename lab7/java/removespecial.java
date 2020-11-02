package cs472;

//Matthew Groover
//11/02/20
//The purpose of this is program is to remove 
//special characters from a text file 

import java.util.*;
import java.io.BufferedReader;  // the libraries necessary 
import java.io.BufferedWriter;  // for file management 
import java.io.File;
import java.io.FileReader;

public class removespecial {
	
	public static void main(String args[]) {
		new removespecial("potato");
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
			
			String temp =" ";
			String temp2 =" ";
			
			while((temp = br.readLine())!= null) {
				
				temp2 = temp2 +fixline(temp); //goes through and fixes each
											  //line then adds to the final 
				 							  // file string
			}//of fix and add lines while the original file has content
			
			System.out.println("Beggining write... /n");
			bw.write(temp2);
			System.out.println("...write complete");
			bw.close();
			
		}//of try to read the file
		catch(Exception e) {
			System.out.println("Error in reading file ");
		}//of if file is not read or exception is thrown
	}//of remove special call
	
	//this method takes in a string supposedly with special characters
	//using regular expressions it replaces the special 
	//it then returns the edited string 
	public String fixline(String str) { 
		
		str = str.replaceAll("[^a-zA-Z0-9]", " ");  
		return str;
		
	}//of fixline method
	
}//of remove special class
