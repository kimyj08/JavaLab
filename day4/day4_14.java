package day4;

import java.util.*;

public class day4_14 {
    public static void main(String[] args) {
        int input = 0, answer = 0;

        answer = (int)(Math.random() * 100) + 1;  // 1-100 사이의 임의의 수를 저장.
        Scanner scanner = new Scanner(System.in);

        do {
            System.out.print("Enter the number is 1 to 100.>");
            input = scanner.nextInt();

            if(input > answer) {
                System.out.println("Retry more than lower.");
            } else if(input < answer) {
                System.out.println("Retry more than bigger.");
            }
        } while(input!=answer);
        System.out.println("That's right.");
    }
}
