package day4;

import java.util.Scanner;

public class day4_26 {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        System.out.print("몇 개를 표시할까요?:");
        int star = scanner.nextInt();

            int i=0;
            while(i<star) {
                if (i%2==0) {
                    System.out.print('*');
                } else {
                    System.out.print('+');
                }
                i++;
        }
        System.out.println();
    }
}
