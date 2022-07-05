package day4;

import java.util.Scanner;

public class day4_13 {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        System.out.println("The sum of numbers.(If you want to 'the-end', enter is 0.)");

        int num;

        int sum = 0;

        while(true) {
            System.out.print(">> ");
            num = scanner.nextInt();
            
            if (num !=0) {
                sum += num;
            } else {  // 0을 입력한 경우
                break;
            }
        }
        System.out.println(sum);
    }
}
