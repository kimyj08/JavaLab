package day17_2;

import java.util.Scanner;

public class Arr {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		System.out.print("요소 수 : ");
		int no = sc.nextInt();
		
		int[] a = new int[no];
		
		for(int i=0;i<no;i++) {
		System.out.print("a["+i+"] = ");
		int ano = sc.nextInt();
		a[i]=ano;
		}
		System.out.print("a = {");
		for(int i=0;i<a.length-1;i++) {
			System.out.print(a[i]+", ");
		}
		System.out.print(a[a.length-1]+"}");
	}

}
