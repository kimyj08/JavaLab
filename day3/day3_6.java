package day3;
public class day3_6 {
    public static void main(String[] args) {
        for(int i=1;i<=5;i++) {             // i = 1 2 3
            for(int j=1;j<=i;j++) {
                System.out.print("*");
            }
            System.out.println();
        }
    }
}
