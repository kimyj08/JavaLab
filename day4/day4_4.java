package day4;

import java.util.Scanner;

public class day4_4 {
    public static void main(String[] args) {
        
        Scanner scanner = new Scanner(System.in);

        System.out.print("How many stars? : ");
        int star = scanner.nextInt();

        for(int i=1;i<=star;i++) {
            System.out.print("*");
        }

    }
}
