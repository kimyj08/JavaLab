package day17_2;

import java.util.Scanner;

public class Exam {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		System.out.print("사람 수 : ");
		int p = sc.nextInt();
		int s[] = new int[p];
		int sum = 0;
		double ave = 0;
		System.out.println("점수를 입력하세요.");
		for(int i=0;i<p;i++) {
			System.out.printf("%d번의 점수 : ",i+1);
			int score = sc.nextInt();
			s[i]=score;
		}
		for(int i=0;i<s.length;i++) {
			sum+=s[i];
			ave=sum/p;
		}
		System.out.println("합계는 "+sum+"점 입니다.");
		System.out.println("평균은 "+ave+"점 입니다.");
		int max = s[0];
		int min = s[0];
		for(int i=1;i<s.length;i++) {
			if(s[i]>max) {
				max=s[i];
			}
			if(s[i]<min) {
				min=s[i];
			}
		}
		System.out.println("최고점은 "+max+"점 입니다.");
		System.out.println("최저점은 "+min+"점 입니다.");
	}

}
