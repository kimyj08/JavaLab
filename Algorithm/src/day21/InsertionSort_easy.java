package day21;

import java.util.Arrays;

public class InsertionSort_easy {

	public static void main(String[] args) {
		int[] arr= {5,3,4,1,2};
		
		for(int i=1;i<arr.length;i++) {
			int t=arr[i];
			int j=i-1;
			while(j>=0&&arr[j]>t) {
				arr[j+1]=arr[j];
				j--;
			}
			arr[j+1]=t;
		}
		for(int each:arr) {
			System.out.print(each+" ");
		}
		System.out.println();
		System.out.println(Arrays.toString(arr));
	}

}
