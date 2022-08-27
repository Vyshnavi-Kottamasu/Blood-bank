package info.core.practice;

import java.util.Scanner;

public class PrimeNumber {

	public static void main(String[] args) {
		
		int num,count;
		
		
		Scanner scn=new Scanner(System.in);
		
		System.out.println("Enter your no");
		
		num=scn.nextInt();
		System.out.println(num);
		for(int i=2;i<=num;i++){
		
		if(i%2!=0){
			System.out.println("its prime number"+i);
		}else{
			System.out.println("its not prime number");
		}
		
		}
		

	}

}
