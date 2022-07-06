package day5;

import java.util.*;

public class day5_9 {

	public static void main(String[] args) {
		int[] numArr = new int[10];
		int[] counter = new int[10];
		
		Random random = new Random();
		
		for(int i=0;i<numArr.length;i++) {
			numArr[i] = random.nextInt(10); // 0~10 미만까지
			System.out.print(numArr[i]);
		}
		System.out.println();
		
		for(int j=0;j<counter.length;j++) {
			counter[numArr[j]]++;
		}
		
		for(int i=0;i<numArr.length;i++) {
			System.out.println(i+"의 개수 : "+counter[i]);
		}

	}

}
