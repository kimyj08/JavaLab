package day7_7;

import java.util.*;

public class DoWhileExam {

	public static void main(String[] args) {
		Scanner scan = new Scanner(System.in);
		int value = 0;
		int sum = 0;
		
		do {
			System.out.print("더하려는 값을 입력하세요.(합계가 100보다 크면 종료) > ");
			value = scan.nextInt();
			sum += value;
		} while(value<100);
		System.out.println("합계 : "+sum);
	}

}
