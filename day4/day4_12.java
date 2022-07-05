package day4;

public class day4_12 {
    public static void main(String[] args) {
        int sum=0;
        int i=0;
        while((sum += ++i)<=100) {
            System.out.printf("%d - %d%n", i, sum);
        }
    }
}
