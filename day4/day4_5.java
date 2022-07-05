package day4;

import java.util.Scanner;

public class day4_5 {
    public static void main(String[] args) {
        System.out.println("Count Down!");

        Scanner scanner = new Scanner(System.in);
        System.out.print("Number is ? ");
        int num = scanner.nextInt();

        for(int i=num;i>=0;i--) {
            System.out.println(i);
        }

    }
}
