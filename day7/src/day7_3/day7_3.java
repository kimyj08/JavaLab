package day7_3;

import java.util.*;

public class day7_3 {

	public static void main(String[] args) {
		Scanner scanner = new Scanner(System.in);
		String monthString = "";
		
		while(true) {
			System.out.print("월을 입력하세요.(숫자로/0=끝.) > ");
			int month = scanner.nextInt();
			
			if(month==0) {
				System.out.println("끝났습니다.");
				break;
			}
		
		switch (month) {
			case 0 : monthString = "끝났습니다.";
					break;
			case 1 : monthString = "January";
					break;
			case 2 : monthString = "Februrary";
					break;
			case 3 : monthString = "March";
					break;
			case 4 : monthString = "April";
					break;
			case 5 : monthString = "May";
					break;
			case 6 : monthString = "June";
					break;
			case 7 : monthString = "July";
					break;
			case 8 : monthString = "August";
					break;
			case 9 : monthString = "September";
					break;
			case 10 : monthString = "October";
					break;
			case 11 : monthString = "November";
					break;
			case 12 : monthString = "December";
					break;
			default: monthString = "Invaild month";
					break;
			}
		System.out.println(monthString);
		}
	}

}
