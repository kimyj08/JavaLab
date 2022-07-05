package day4;

import java.util.Scanner;

public class day4_7 {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        System.out.println("The sum of 1 to n.");
        System.out.print("n : ");
        int n = scanner.nextInt();

        int sum = 0;

        for(int i=1;i<n;i++) {
            System.out.print(i + " + ");
            sum += i;
        }
        System.out.print(n + " = ");
        sum += n;
        System.out.println(sum);
    }
}
