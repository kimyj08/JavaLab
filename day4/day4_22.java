package day4;

import java.util.*;

public class day4_22 {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        int x;

        do {
            System.out.print("세 자리의 정숫값: ");
            x = scanner.nextInt();
        } while (x < 100 || x > 999);

        System.out.print("입력한 값은 " + x + "입니다.");

        // while(true) {
        // System.out.print("세 자리의 정수값 : ");
        // int num = scanner.nextInt();

        // if (100<=num&&num<=999) {
        //     System.out.println("입력한 값은 " + num);
        // } else {
        //     break;
        // }
        // }
    }
}
