package day4;

import java.util.*;

public class day4_18 {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        while(true) {
            System.out.println("(1) square");
            System.out.println("(2) square root");
            System.out.println("(3) log");
            System.out.print("Which one do you like in menu(1~3, 0 : DONE)? > ");
            int num = scanner.nextInt();

            if(num==0) {
                break;
            } else if (1 <= num && num <= 3) {
                System.out.printf("You choosed number %d\n", num);
            } else {
                System.out.println("You got the wrong number.");
            }
        }
        System.out.println("DONE.");
    }
}
