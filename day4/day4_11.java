package day4;

import java.util.*;;

public class day4_11 {
    public static void main(String[] args) {
        int num = 0, sum = 0;
        System.out.print("The number is (ex.12345): ");

        Scanner scanner = new Scanner(System.in);
        String tmp = scanner.nextLine();
        num = Integer.parseInt(tmp);

        while(num!=0) {
            sum += num%10;
            System.out.printf("sum=%3d num = %d%n", sum, num);

            num /= 10;
        }
        System.out.println("The sum of each number : " +sum);
    }
}
