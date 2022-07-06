package day5;

public class day5_5 {

	public static void main(String[] args) {
		int sum =0;
		float average = 0f;
		
		int[] score = {100, 88, 100, 100, 90};
		
		for(int i=0;i<score.length;i++) {
			sum += score[i];
		}
		System.out.println("총점 : "+sum);
		System.out.println("평균 : "+(sum/(float)score.length));
	}

}
