package day4;

import java.util.Scanner;

public class day4_6 {
    public static void main(String[] args) {

        Scanner scanner = new Scanner(System.in);
        System.out.print("The sum of 1 to n. n is : ");
        int n = scanner.nextInt();

        int sum = 0;

        for(int i=1;i<=n;i++) {
            sum += i;
            System.out.println("The sum of 1 to " + n + " is " + sum + "." );
        }

    }
}
