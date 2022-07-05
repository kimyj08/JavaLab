package day4;

import java.util.*;

public class day4_21 {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        int retry;  // 다시 한번?

        do {
            System.out.print("What's the number? > ");
            int n = scanner.nextInt();

            if (n>0) {
                System.out.println("This number is positive number.");
            } else if (n<0) {
                System.out.println("This number is negative number.");
            } else {
                System.out.println("This number is ZERO.");
            }

            System.out.print("Retry? 1-Yes / 0-No : ");
            retry = scanner.nextInt();
        }
        while(retry==1);
    }
}
