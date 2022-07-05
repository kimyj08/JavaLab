package day4;

import java.util.Scanner;

public class day4_25 {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        System.out.print("몇 개의 *를 표시할까요?:");
        int star = scanner.nextInt();

        int i=1;
        while(i<=star) {
            System.out.print("*");
            i++;
        } 
    }
}
